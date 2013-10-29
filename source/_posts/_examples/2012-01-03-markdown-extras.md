title:        Markdown Extras  
subtitle:     Some common markdown extensions  
date:         2012-01-03 15:56  
author:       Jamie Osborne  
categories:   demo markdown  
image:        https://github.com/images/icons/emoji/octocat.png  
web:          http://jmeosbn.github.io  

The extensions listed here are fairly common, the main issues being:

- Github flavoured markdown ([gfm]) doesn't support footnotes or definition lists.

- MultiMarkdown ([mmd]) uses an incompatible format for cross reference links.

[gfm]: http://github.github.com/github-flavored-markdown/
[mmd]: https://rawgithub.com/fletcher/human-markdown-reference/master/index.html

<!-- more -->


## Cleaner Links

Empty brackets after a reference link can be omitted - so long as the meaning is
unambiguous.

e.g. instead of [github][], you can use [github].

[github]: http://github.com


## Footnotes

Similar to reference style links, are footnote links[^moreinfo].

[^moreinfo]: here is some more info, that will appear at the bottom of the page.


## Cross References

Automatic creation of [header IDs] makes it easy to link to various
[sections](#cross-references) within your post.

[header IDs]: http://kramdown.rubyforge.org/converter/html.html#auto-ids


## Fenced code blocks

Fenced code blocks don't require indenting, and use a syntax similar to github's.

Code can be highlighted by specifying the language used.

```ruby
require 'redcarpet'
markdown = Redcarpet.new("Hello World!")
puts markdown.to_html
```


## Tables

Tables can be created easily, additional formatting such as text alignment
[can also be used](http://kramdown.rubyforge.org/quickref.html#tables).

|   normal header   |   centre header   |    right header   |
|  ---------------  |  :-------------:  |  --------------:  |
|    normal text    |   **bold** text   |   *italic* text   |


## Definitions

Definition lists have a syntax that's similar to normal lists:

term to define
: a definition
: an alternate definition


## More Examples

See the [examples](.) folder for more uses of markdown and octopress syntax.
