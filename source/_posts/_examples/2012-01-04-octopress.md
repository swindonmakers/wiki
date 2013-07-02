---

layout: post
title: Octopress Plugins
date: 2012-01-04 18:12
updated: 2012-06-01 11:52
author: Git User
categories: [demo, octopress]
summary: Plugins provided by Jekyll/Octopress

---

The metadata shown above can have a `title` that differs from that used in the filename.
This can be useful if you want a shorter link to the post, or you want to change the
title later (without breaking links that exist elsewhere).

<!-- more -->

If you significantly update your post, you can note this in the metadata by adding the
`updated` tag. The newer date will be displayed with the post.


## Octopress Plugins

Octopress includes it's own [plugins], as well as those provided by [jekyll], the static
site generator it uses.

[plugins]: http://octopress.org/docs/blogging/plugins/
[jekyll]: http://jekyllrb.com/

Fenced code blocks are [just one way][code] to include code with syntax highlighting:

```sh
$ cd my-project
$ git init
Initialized empty Git repository in my-project/.git/
```

```ruby
require 'redcarpet'
markdown = Redcarpet.new("Hello World!")
puts markdown.to_html
```

[code]: http://octopress.org/docs/blogging/code/


## Liquid Tags

[Liquid] is a template engine which parses text and renders output using a selection of
[filters and tags].

The image tag allows left/right/centre placement and size parameters:

{% img center http://mac.github.com/images/promo-screenshot.png GitHub for Mac %}

[Liquid]: https://github.com/Shopify/liquid/wiki
[filters and tags]: https://github.com/Shopify/liquid/wiki/Liquid-for-Designers
[Octopress plugins]: http://octopress.org/docs/blogging/plugins/


## Custom Plugins

Plugins that are not standard in octopress, but are used on this site.

{% youtube _HGV4Ppnx14 %}


## More Examples

See the [examples] folder for more uses of markdown and octopress syntax.

[examples]: https://github.com/snhack/snhack.github.com/tree/source/source/_posts/_examples