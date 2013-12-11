title:        Kramdown Extras  
subtitle:     Some non-standard kramdown extensions  
date:         2012-01-05 16:12  
author:       Jamie Osborne  
categories:   demo markdown  
image:        https://github.com/images/icons/emoji/octocat.png  
web:          http://jmeosbn.github.io  

These extensions are provided by [kramdown], the markdown renderer used for this site.

**NOTE: Extensions in this section are rarely supported by other markdown implementations.**

[kramdown]: http://kramdown.rubyforge.org/quickref.html

<!-- more -->


## Attributes

Attributes allow for modifying [block] and [span] level elements.

[block]: http://kramdown.rubyforge.org/quickref.html#block-attributes
[span]: http://kramdown.rubyforge.org/quickref.html#inline-attributes

One use of attributes is to append class names to elements:

![CentredImage](https://github.com/images/icons/emoji/octocat.png){:.center}

Another is to add custom formatting without using HTML, such as *underline*{:.underline},
*strikeout*{: style="text-decoration: line-through"}, and *colour*{:.underline style="color: red"}.


## Table of Contents

A [table of contents] can be generated with the `toc` reference (as a block attribute).
Normally this would be used at the start of a long post with lots of headings.

* This list item will be replaced with the table of contents.
{:toc}

[table of contents]: http://kramdown.rubyforge.org/converter/html.html#toc


## Header with an explicit header ID  {#manual-id}

Manually specify a header ID by following it with `{#name}`.


## EOB Marker

Explicitly end a block-level element with an EOB marker (a line containg only `^`):

    This is the first code block

    This is also the first code block
^

    This second code block is separated by the EOB marker above.


## More Examples

See the [examples](.) folder for more uses of markdown and octopress syntax.
