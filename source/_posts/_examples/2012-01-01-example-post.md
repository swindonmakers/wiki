---

layout: post
title: Example Post
date: 2012-01-01 20:06
author: Git User
categories: [demo, markdown]
summary: A very short summary such as this one

---

<!-- this is a HTML comment. It can span one line, or several,
     and will not appear in the browser when rendered as HTML -->

A special 'more' comment tag marks the end of content that should be previewed on
the blog index page, and where the 'Read More' link will be shown.

<!-- more -->


## This is a H2 heading

Posts automatically start with the title rendered as a H1 heading.  Therefore, your post
should only use subheadings of level 2 and greater.


## Markdown Basics

Here's a [link to github](http://github.com), some text with *italic* and **bold**
formatting, and an image:

![Github's Octocat](https://github.com/images/icons/emoji/octocat.png "This title is optional")


- This is
- an unordered list
    1. with an ordered
    2. list embedded
- you can **use markdown** here
- done


> And this is a block quote, you can **use markdown** here too!


To include code samples:

    Indent with 1 tab or 4 spaces to *prevent* conversion by markdown
    Code such as HTML can shown without being interpreted: <!-- comment -->

Markup short phrases of code inline, by wrapping with the `back tick character`.


## Reference Links

You can use [reference style links][twitter] to keep things tidy.

[twitter]: http://twitter.com

References can be used [multiple times][twitter], by both links and images.

If the reference is the same as the linked text, you don't need to repeat it.

Link to the [octocat][] shown below:

![Show Octocat][octocat]

[octocat]: https://github.com/images/icons/emoji/octocat.png "The Octocat!"


## Other

End a line with two spaces,  
if you must force a line break.

---

Add a horizonal rule `<hr>` by adding three or more dashes/asterisks.


## More Examples

See the [examples] folder for more uses of markdown and octopress syntax.

[examples]: https://github.com/snhack/snhack.github.com/tree/source/source/_posts/_examples
