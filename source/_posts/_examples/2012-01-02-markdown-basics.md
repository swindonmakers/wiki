---

layout: post
title: Markdown Basics
subtitle: Demonstrates most standard markdown features
date: 2012-01-02 20:06
author: Git User
categories: [demo, markdown]

---

Paragraphs of text are separated with a blank line. Lines within a paragraph will be
merged, which allows the plain text to be hard wrapped for readability.

End a line with two spaces,  
if you must force a line break.

Here's a [link to github](http://github.com), some text with *italic* and **bold**
formatting, and an image:

![Github's Octocat](https://github.com/images/icons/emoji/octocat.png "This title is optional")

<!-- more -->

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

---

Add a horizonal rule `<hr>` by adding three or more dashes/asterisks.


## Reference Links

You can use [reference style links][twitter] to keep things tidy.

[twitter]: http://twitter.com

References can be used [multiple times][twitter], by both links and images.

If the reference is the same as the linked text, you don't need to repeat it.

Link to the [octocat][] shown below:

![Show Octocat][octocat]

[octocat]: https://github.com/images/icons/emoji/octocat.png "The Octocat!"


## More Examples

See the [examples](.) folder for more uses of markdown and octopress syntax.
