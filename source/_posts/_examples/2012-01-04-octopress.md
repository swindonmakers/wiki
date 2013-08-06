---

layout: post
title: Octopress Plugins
subtitle: Plugins provided by Jekyll/Octopress
date: 2012-01-04 18:12
updated: 2012-06-01 11:52
author: Git User
categories: [demo, octopress]

---


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


### Recurring Posts

Set `recurring_title: true` if a post's title is likely to be duplicated. Intended for
regular feature posts, where the date is needed to provide a unique URL.

    ---
    layout: post
    title: Weekly News
    subtitle: One of many articles with the same title
    date: 2012-01-04 18:12
    recurring_title: true
    ---


## More Examples

See the [examples](.) folder for more uses of markdown and octopress syntax.
