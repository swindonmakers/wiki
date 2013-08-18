layout:       post  
title:        Octopress Plugins  
subtitle:     Plugins provided by Jekyll/Octopress  
categories:   demo octopress  
author:       Git User  
image:        for-the-index-page.jpg  
date:         2012-01-04 18:12  
updated:      2012-06-01 11:52  

The metadata shown above can have a `title` that differs from that used in the filename.
This can be useful if you want a shorter link to the post, or you want to change the
title later (without breaking links that exist elsewhere).

<!-- more -->

If you significantly update your post, you can note this in the metadata by adding the
`updated` tag. The newer date will be displayed with the post.


## Octopress Plugins

***Octopress includes it's own [plugins], as well as those provided by [jekyll][] (the static
site generator it uses).***

[plugins]: http://octopress.org/docs/blogging/plugins/
[jekyll]: http://jekyllrb.com/

Fenced [code blocks] use a syntax similar to github's, and support syntax highlighting:

```ruby
require 'redcarpet'
markdown = Redcarpet.new("Hello World!")
puts markdown.to_html
```

[code blocks]: http://octopress.org/docs/blogging/code/


## Custom Plugins

***Plugins used on this site, but not installed with octopress by default.***


### YouTube Tag

Easily embed youtube videos into your post:

    {% youtube _HGV4Ppnx14 %}


### Post Assets

Reference post assets such as images, by using relative paths:

    ![MyImage](MyImageFile.jpg)

*The post asset folder should be named `YYYY-MM-DD-name-of-post`, and located within
[source/_posts/_assets](../_assets).*


### Duplicate Post Titles

Set `dated_url: true` if a post's title is likely to be duplicated. Intended for
regular feature posts, where the date is needed to provide a unique URL.

    ---
    layout: post
    title: Weekly News
    subtitle: One of many articles with the same title
    date: 2012-01-04 18:12
    dated_url: true
    ---


### MultiMarkdown Metadata

Use [MultiMarkdown style metadata][mmd] in place of YAML frontmatter:

[mmd]: https://github.com/fletcher/MultiMarkdown/wiki/MultiMarkdown-Syntax-Guide

    Layout: post
    Title: My Blog Post
    Date: 2013-07-03
    Author: Fletcher T. Penney

    This is the post content


## More Examples

See the [examples](.) folder for more uses of markdown and octopress syntax.
