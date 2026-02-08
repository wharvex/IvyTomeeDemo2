# 1. Perceivable
Information and user interface components must be presentable to users in ways they can perceive.

## Guideline 1.1 Text Alternatives
Provide text alternatives for any non-text content so that it can be changed into other forms people need, such as large print, braille, speech, symbols or simpler language.

### Success Criterion 1.1.1 Non-text Content (Level A)
All non-text content that is presented to the user has a text alternative that serves the equivalent purpose, except for the situations listed below.

#### Controls, Input
If non-text content is a control or accepts user input, then it has a name that describes its purpose. (Refer to Success Criterion 4.1.2 for additional requirements for controls and content that accepts user input.)

#### Test
If non-text content is a test or exercise that would be invalid if presented in text, then text alternatives at least provide descriptive identification of the non-text content.

#### Sensory
If non-text content is primarily intended to create a specific sensory experience, then text alternatives at least provide descriptive identification of the non-text content.

#### CAPTCHA
If the purpose of non-text content is to confirm that content is being accessed by a person rather than a computer, then text alternatives that identify and describe the purpose of the non-text content are provided, and alternative forms of CAPTCHA using output modes for different types of sensory perception are provided to accommodate different disabilities.

#### Decoration, Formatting, Invisible
If non-text content is pure decoration, is used only for visual formatting, or is not presented to users, then it is implemented in a way that it can be ignored by assistive technology.

## Guideline 1.3 Adaptable
Create content that can be presented in different ways (for example simpler layout) without losing information or structure.

### Success Criterion 1.3.1 Info and Relationships (Level A)
Information, structure, and relationships conveyed through presentation can be programmatically determined or are available in text.

### Success Criterion 1.3.2 Meaningful Sequence (Level A)
When the sequence in which content is presented affects its meaning, a correct reading sequence can be programmatically determined.

### Success Criterion 1.3.3 Sensory Characteristics (Level A)
Instructions provided for understanding and operating content do not rely solely on sensory characteristics of components such as shape, color, size, visual location, orientation, or sound.

Note: For requirements related to color, refer to Guideline 1.4.

### Success Criterion 1.3.4 Orientation (Level AA)
Content does not restrict its view and operation to a single display orientation, such as portrait or landscape, unless a specific display orientation is essential.

Note: Examples where a particular display orientation may be essential are a bank check, a piano application, slides for a projector or television, or virtual reality content where content is not necessarily restricted to landscape or portrait display orientation.

### Success Criterion 1.3.5 Identify Input Purpose (Level AA)
The purpose of each input field collecting information about the user can be programmatically determined when:
- The input field serves a purpose identified in the Input Purposes for user interface components section; and
- The content is implemented using technologies with support for identifying the expected meaning for form input data.

## Guideline 1.4 Distinguishable
Make it easier for users to see and hear content including separating foreground from background.

### Success Criterion 1.4.1 Use of Color (Level A)
Color is not used as the only visual means of conveying information, indicating an action, prompting a response, or distinguishing a visual element.

Note: This success criterion addresses color perception specifically. Other forms of perception are covered in Guideline 1.3 including programmatic access to color and other visual presentation coding.

### Success Criterion 1.4.3 Contrast (Minimum) (Level AA)
The visual presentation of text and images of text has a contrast ratio of at least 4.5:1, except for the following:
- Large Text: Large-scale text and images of large-scale text have a contrast ratio of at least 3:1;
- Incidental: Text or images of text that are part of an inactive user interface component, that are pure decoration, that are not visible to anyone, or that are part of a picture that contains significant other visual content, have no contrast requirement.
- Logotypes: Text that is part of a logo or brand name has no contrast requirement.

### Success Criterion 1.4.4 Resize Text (Level AA)
Except for captions and images of text, text can be resized without assistive technology up to 200 percent without loss of content or functionality.

### Success Criterion 1.4.5 Images of Text (Level AA)
If the technologies being used can achieve the visual presentation, text is used to convey information rather than images of text except for the following:
- Customizable: The image of text can be visually customized to the user's requirements;
- Essential: A particular presentation of text is essential to the information being conveyed.

Note: Logotypes (text that is part of a logo or brand name) are considered essential.

### Success Criterion 1.4.10 Reflow (Level AA)
Content can be presented without loss of information or functionality, and without requiring scrolling in two dimensions for:
- Vertical scrolling content at a width equivalent to 320 CSS pixels;
- Horizontal scrolling content at a height equivalent to 256 CSS pixels.
Except for parts of the content which require two-dimensional layout for usage or meaning.

Note 1: 320 CSS pixels is equivalent to a starting viewport width of 1280 CSS pixels wide at 400% zoom. For web content which is designed to scroll horizontally (e.g., with vertical text), 256 CSS pixels is equivalent to a starting viewport height of 1024 CSS pixels at 400% zoom.

Note 2: Examples of content which requires two-dimensional layout are images required for understanding (such as maps and diagrams), video, games, presentations, data tables (not individual cells), and interfaces where it is necessary to keep toolbars in view while manipulating content. It is acceptable to provide two-dimensional scrolling for such parts of the content.

### Success Criterion 1.4.11 Non-text Contrast (Level AA)
The visual presentation of the following have a contrast ratio of at least 3:1 against adjacent color(s):
- User Interface Components: Visual information required to identify user interface components and states, except for inactive components or where the appearance of the component is determined by the user agent and not modified by the author;
- Graphical Objects: Parts of graphics required to understand the content, except when a particular presentation of graphics is essential to the information being conveyed.

### Success Criterion 1.4.12 Text Spacing (Level AA)
In content implemented using markup languages that support the following text style properties, no loss of content or functionality occurs by setting all of the following and by changing no other style property:
- Line height (line spacing) to at least 1.5 times the font size;
- Spacing following paragraphs to at least 2 times the font size;
- Letter spacing (tracking) to at least 0.12 times the font size;
- Word spacing to at least 0.16 times the font size.
Exception: Human languages and scripts that do not make use of one or more of these text style properties in written text can conform using only the properties that exist for that combination of language and script.

### Success Criterion 1.4.13 Content on Hover or Focus (Level AA)
Where receiving and then removing pointer hover or keyboard focus triggers additional content to become visible and then hidden, the following are true:
- Dismissible: A mechanism is available to dismiss the additional content without moving pointer hover or keyboard focus, unless the additional content communicates an input error or does not obscure or replace other content;
- Hoverable: If pointer hover can trigger the additional content, then the pointer can be moved over the additional content without the additional content disappearing;
- Persistent: The additional content remains visible until the hover or focus trigger is removed, the user dismisses it, or its information is no longer valid.
Exception: The visual presentation of the additional content is controlled by the user agent and is not modified by the author.

Note 1: Examples of additional content controlled by the user agent include browser tooltips created through use of the HTML title attribute.

Note 2: Custom tooltips, sub-menus, and other nonmodal popups that display on hover and focus are examples of additional content covered by this criterion.