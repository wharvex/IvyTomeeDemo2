#!/usr/bin/env python3
import re
import sys
import os
import json
from pathlib import Path
import difflib

root = Path(r"c:\Development\Projects\IvyTomeeDemo2")
templates_dir = root / 'web' / 'WEB-INF' / 'templates'

# Helpers

def decode_bytes(b):
    for enc in ('utf-8', 'utf-8-sig', 'latin-1'):
        try:
            return b.decode(enc), enc
        except Exception:
            continue
    return b.decode('latin-1'), 'latin-1'


def is_pos_in_string(s, pos):
    # naive scan to see if pos is inside a single or double quoted string
    in_str = None
    escaped = False
    i = 0
    while i < pos:
        c = s[i]
        if c == '\\' and not escaped:
            escaped = True
            i += 1
            continue
        if (c == '"' or c == "'") and not escaped:
            if in_str is None:
                in_str = c
            elif in_str == c:
                in_str = None
        escaped = False
        i += 1
    return in_str is not None


# Patterns
fm_comment_re = re.compile(r"<#--.*?-->", re.DOTALL)
html_comment_re = re.compile(r"<!--.*?-->", re.DOTALL)
script_block_re = re.compile(r"(<script\b[^>]*>)(.*?)(</script>)", re.IGNORECASE | re.DOTALL)
style_block_re = re.compile(r"(<style\b[^>]*>)(.*?)(</style>)", re.IGNORECASE | re.DOTALL)
js_block_comment_re = re.compile(r"/\*.*?\*/", re.DOTALL)
js_line_comment_re = re.compile(r"//.*$", re.MULTILINE)
css_block_comment_re = re.compile(r"/\*.*?\*/", re.DOTALL)


results = {}
files_changed = []
all_ftlh_files = list(templates_dir.rglob('*.ftlh'))
all_ftlh_files_sorted = sorted(all_ftlh_files, key=lambda p: str(p).lower())

for p in all_ftlh_files_sorted:
    rel = str(p)
    entry = {
        'freemarker_removed': 0,
        'html_removed': 0,
        'js_removed': 0,
        'css_removed': 0,
        'bytes_changed': 0,
        'warnings': []
    }
    try:
        b = p.read_bytes()
        s, enc = decode_bytes(b)
        orig_s = s

        # Process <script> blocks: remove /* */ and // comments inside, cautiously
        def script_repl(match):
            start_tag, content, end_tag = match.group(1), match.group(2), match.group(3)
            removed = 0
            # Remove block comments
            content_new, n_block = js_block_comment_re.subn('', content)
            removed += n_block
            # Remove line comments but avoid URLs and comments inside strings
            # We'll iterate over occurrences of // and remove if not in string and not part of scheme like http://
            content_list = list(content_new)
            idx = 0
            n_line = 0
            while True:
                m = re.search(r'//', ''.join(content_list[idx:]))
                if not m:
                    break
                pos = idx + m.start()
                # check preceding char for ':' to avoid http://
                if pos > 0 and content_list[pos-1] == ':':
                    idx = pos + 2
                    continue
                # check if inside string
                if is_pos_in_string(''.join(content_list), pos):
                    entry['warnings'].append('Possible // inside string in script at pos {}'.format(pos))
                    idx = pos + 2
                    continue
                # remove from pos to end of line
                # find line end
                line_end = ''.join(content_list).find('\n', pos)
                if line_end == -1:
                    # remove to end
                    del content_list[pos:]
                else:
                    del content_list[pos:line_end]
                n_line += 1
                # continue from pos
                idx = pos
            new_content = ''.join(content_list)
            removed += n_line
            entry['js_removed'] += removed
            return start_tag + new_content + end_tag

        s = script_block_re.sub(script_repl, s)

        # Process <style> blocks
        def style_repl(match):
            start_tag, content, end_tag = match.group(1), match.group(2), match.group(3)
            content_new, n_block = css_block_comment_re.subn('', content)
            entry['css_removed'] += n_block
            return start_tag + content_new + end_tag

        s = style_block_re.sub(style_repl, s)

        # FreeMarker comments
        s, n_fm = fm_comment_re.subn('', s)
        entry['freemarker_removed'] += n_fm

        # HTML comments
        s, n_html = html_comment_re.subn('', s)
        entry['html_removed'] += n_html

        if s != orig_s:
            new_b = s.encode(enc)
            p.write_bytes(new_b)
            entry['bytes_changed'] = abs(len(new_b) - len(b))
            results[rel] = entry
            files_changed.append((str(p), orig_s, s))
        else:
            # no changes
            entry['bytes_changed'] = 0
            # only record if changes were made; otherwise skip
    except Exception as e:
        results[rel] = {'error': str(e)}

# Build summary
summary = {
    'files_scanned': len(all_ftlh_files_sorted),
    'files_modified': len(results),
    'total_removed': {
        'freemarker': sum(v.get('freemarker_removed',0) for v in results.values() if isinstance(v,dict)),
        'html': sum(v.get('html_removed',0) for v in results.values() if isinstance(v,dict)),
        'js': sum(v.get('js_removed',0) for v in results.values() if isinstance(v,dict)),
        'css': sum(v.get('css_removed',0) for v in results.values() if isinstance(v,dict)),
    },
    'total_bytes_changed': sum(v.get('bytes_changed',0) for v in results.values() if isinstance(v,dict))
}

# Diffs for first 5 modified files alphabetically
diffs = {}
changed_files_sorted = sorted(files_changed, key=lambda t: t[0].lower())
for p, orig_s, new_s in changed_files_sorted[:5]:
    diff = '\n'.join(difflib.unified_diff(orig_s.splitlines(), new_s.splitlines(), fromfile=p + '.orig', tofile=p, lineterm=''))
    diffs[p] = diff

out = {
    'files': results,
    'diffs': diffs,
    'summary': summary
}

print(json.dumps(out, indent=2))
