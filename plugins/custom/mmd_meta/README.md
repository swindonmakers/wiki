## MMD Meta

Support MultiMarkdown formatted metadata in Jekyll posts.


### Usage

Use MultiMarkdown style [metadata] in place of YAML [frontmatter].

[metadata]: https://github.com/fletcher/MultiMarkdown/wiki/MultiMarkdown-Syntax-Guide
[frontmatter]: http://jekyllrb.com/docs/frontmatter/


### Notes

Automatically sets default metadata for layout style.

Only supports posts (Jekyll pages must start with `---`).

Converts MultiMarkdown keys to lowercase and strips spaces.

Converts MultiMarkdown page variables into liquid tags.


### Example

A post using MultiMarkdown style metadata and variables:

    Title:        My Blog Post
    Date:         2013-07-03
    Author:       Fletcher T. Penney
    Another Key:  some data

    Post content, with embedded page variables: [%Title] and [%Another Key].


Will be read as if it had YAML style metadata and liquid tags:

    ---
    layout:       post
    title:        My Blog Post
    date:         2013-07-03
    author:       Fletcher T. Penney
    anotherkey:   some data
    ---

    Post content, with embedded page variables: {{ page.title }} and {{ page.anotherkey }}.

_note: no value needed to be set for the layout field_


### Author

Created by [Jamie Osborne](https://github.com/jmeosbn).

[Upstream GitHub project](https://github.com/jmeosbn/mmd_meta)

### License

[MIT License](LICENSE).
