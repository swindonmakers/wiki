layout:       post  
title:        Octopress Extras  
subtitle:     Extras provided by Octopress and Jekyll  
date:         2012-01-04 18:12  
author:       Jamie Osborne  
categories:   demo octopress  
image:        https://github.com/images/icons/emoji/octocat.png  
web:          http://jmeosbn.github.io  
updated:      2012-06-01 11:52  

The `title` field can differ from that used in the filename. This allows changing the
title later without breaking existing links, or use of a longer title than that used in
the post's URL.

<!-- more -->

The `updated` field can be used to note the most recent date of any significant changes.
The newer date will be shown in the post footer, but will not change the index.


## Octopress Plugins

Octopress includes it's own [plugins], as well as those provided by [jekyll][] (the
static site generator it uses). For portability, markdown syntax is preferred where
possible (code blocks, images, block quotes, etc.).

[plugins]: http://octopress.org/docs/blogging/plugins/
[jekyll]: http://jekyllrb.com/


## Custom Plugins

***Plugins used on this site, but not installed with octopress by default.***


### [YouTube Tag][youtube]

Easily embed youtube videos into your post:

    {% youtube _HGV4Ppnx14 %}

[youtube]: https://gist.github.com/jamieowen/2063748


### [Post Assets][post_images]

Reference post assets such as images, by using relative paths:

    ![MyImage](MyImageFile.jpg)

*The post asset folder should be named `YYYY-MM-DD-name-of-post`, and located within
[source/_posts/_assets](../_assets).*

[post_images]: https://github.com/jmeosbn/post_images


### [Duplicate Post Titles][permalink_dated]

Set `dated_url: true` if a post's title is likely to be duplicated.

Intended for regular feature posts, where the date is needed to provide a unique URL.

    layout:     post
    title:      Weekly News
    subtitle:   One of many articles with the same title
    date:       2012-01-04 18:12
    dated_url:  true

    <!-- URL for this post will be 2012-01-04-weekly-news -->

[permalink_dated]: https://github.com/jmeosbn/permalink_dated


### [MultiMarkdown Metadata][mmd_meta]

Enables the use of [MultiMarkdown style metadata][mmd] in place of YAML frontmatter.

This is the default metadata format used for this site and example posts.

[mmd]: https://github.com/fletcher/MultiMarkdown/wiki/MultiMarkdown-Syntax-Guide
[mmd_meta]: https://github.com/jmeosbn/mmd_meta


## More Examples

See the [examples](.) folder for more uses of markdown and octopress syntax.
