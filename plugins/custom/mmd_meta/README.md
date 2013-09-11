## MMD Meta

Support MultiMarkdown formatted metadata in Jekyll posts.


### Usage

Use MultiMarkdown style [metadata] in place of YAML [frontmatter].

[metadata]: https://github.com/fletcher/MultiMarkdown/wiki/MultiMarkdown-Syntax-Guide
[frontmatter]: http://jekyllrb.com/docs/frontmatter/

Only supports posts (Jekyll pages must start with `---`).

Converts MultiMarkdown keys to lowercase, e.g. 'Author' -> 'author'.


### Example

A post starting with MultiMarkdown metadata:

    Layout: post
    Title: My Blog Post
    Date: 2013-07-03
    Author: Fletcher T. Penney

    This is the post content

Will be read as if it had a YAML header:

    ---
    layout: post
    title: My Blog Post
    date: 2013-07-03
    author: Fletcher T. Penney
    ---

    This is the post content


### Author

Created by [Jamie Osborne](https://github.com/jmeosbn).

[Upstream GitHub project](https://github.com/jmeosbn/mmd_meta)

### License

[MIT License](LICENSE).
