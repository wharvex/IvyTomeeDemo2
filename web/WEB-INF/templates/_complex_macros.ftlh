<#-- Shared complex macros used to increase template complexity for testing -->
<#-- NOTE: Intentionally complex with nested branches to increase cognitive load -->

<#macro renderField p_name p_label p_type="text" p_id="" p_required=false p_attrs="">
    <#-- choose id if not provided -->
    <#if p_id?has_content>
        <#assign fldId = p_id />
    <#else>
        <#assign fldId = "fld_" + p_name />
    </#if>

    <label for="${fldId}">${p_label!""}</label>
    <#if p_type == "textarea">
        <textarea id="${fldId}" name="${p_name}" ${p_attrs} <#if p_required>required</#if>></textarea>
    <#else>
        <input type="${p_type}" id="${fldId}" name="${p_name}" ${p_attrs} <#if p_required>required</#if>/>
    </#if>

    <#-- optional debug hint -->
    <#if .globals.debug?exists && .globals.debug == true>
        <div class="debug">Field: ${p_name!""} id=${fldId}</div>
    </#if>
</#macro>

<#macro renderNav p_items>
    <nav>
        <ul>
            <#list p_items as item>
                <li><a href="${item.href!""}">${item.label!""}</a></li>
            </#list>
        </ul>
    </nav>
</#macro>

<#macro debugPanel p_messages>
    <div class="debugPanel">
        <#if p_messages?has_content>
            <ul>
                <#list p_messages as msg>
                    <li>${msg!""}</li>
                </#list>
            </ul>
        <#else>
            <div>No debug messages</div>
        </#if>
    </div>
</#macro>
