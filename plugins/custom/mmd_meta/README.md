## MMD Meta

Created by Jamie Osborne, MIT License.

[Upstream GitHub project](https://github.com/jmeosbn/mmd_meta)


### Description

Support MultiMarkdown formatted metadata in Jekyll.


### Usage

Use MultiMarkdown style metadata in place of YAML frontmatter:
https://github.com/fletcher/MultiMarkdown/wiki/MultiMarkdown-Syntax-Guide

Performs basic conversion of MMD keys, e.g. 'Author' -> 'author'.


### Example

A post starting with:

    Layout: post
    Title: My Blog Post
    Date: 2013-07-03
    Author: Fletcher T. Penney

    This is the post content

Will be read as if you had:

    ---
    layout: post
    title: My Blog Post
    date: 2013-07-03
    author: Fletcher T. Penney
    ---

    This is the post content
