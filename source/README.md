snhack.github.com
=================

__Note:  master branch is overwritten during compilation.__

Please see the [INSTALL](INSTALL.md) file for full details on how to build and
preview this site locally.


### Super minimal way to add a post

> Use this workflow when submitting a blog post using standard text or markdown.

Load the [source/_posts] folder and use the [new file] icon above its listing.
Github will automatically fork this project as required.

[source/_posts]: https://github.com/snhack/snhack.github.com/tree/source/source/_posts

Name the new file using your preferred post date and title,
according to the pattern: `YYYY-MM-DD-url-safe-title.md`.

[new file]: https://github.com/blog/1327-creating-files-on-github
[naming it]: https://github.com/blog/1436-moving-and-renaming-files-on-github

Enter basic post metadata, followed by your content as plain text or [markdown].
See [this example post] for a template.

[this example post]: https://raw.github.com/snhack/snhack.github.com/source/source/_posts/_examples/2012-11-06-example-post.md
[preview]: https://github.com/snhack/snhack.github.com/blob/source/source/_posts/_examples/2012-11-06-example-post.md

Use the `Propose New File` button to commit the post to a new branch in your fork and
start a pull request.

Ensure the base branch is set to this repo's `source` branch.  Check the `Files Changed` tab, and then hit `Send pull request`.

[post metadata]: http://octopress.org/docs/blogging
[markdown basics]: http://daringfireball.net/projects/markdown/basics
[markdown]: http://daringfireball.net/projects/markdown/dingus
