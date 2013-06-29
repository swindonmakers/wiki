## snhack.github.com

__Note:  master branch is overwritten during compilation.__

Please see the [INSTALL](INSTALL.md) file for full details on how to build and
preview this site locally.


### Super minimal way to add a post

> Use this workflow when submitting a blog post using standard text or markdown.

Load the [source/_posts] folder and use the [new file] icon above its listing.
Github will automatically [fork] this project as required.

[source/_posts]: https://github.com/snhack/snhack.github.com/tree/source/source/_posts
[fork]: https://help.github.com/articles/fork-a-repo
[pull request]: https://help.github.com/articles/using-pull-requests

Name the new file using your preferred post date and title,
according to the pattern: `YYYY-MM-DD-url-safe-title.md`.

[new file]: https://github.com/blog/1327-creating-files-on-github
[naming it]: https://github.com/blog/1436-moving-and-renaming-files-on-github

Enter basic post metadata, followed by your content as plain text or [markdown].
See [this example post] for a template.

[this example post]: https://raw.github.com/snhack/snhack.github.com/source/source/_posts/_examples/2012-01-01-example-post.md
[preview]: https://github.com/snhack/snhack.github.com/blob/source/source/_posts/_examples/2012-01-01-example-post.md

Use the `Propose New File` button to commit the post to a new branch in your fork and
start a [pull request].

Ensure the base branch is set to this repo's `source` branch.
Check the `Files Changed` tab, then hit `Send pull request`.

[post metadata]: http://octopress.org/docs/blogging
[markdown basics]: http://daringfireball.net/projects/markdown/basics
[markdown]: http://daringfireball.net/projects/markdown/dingus


### Notes on Pull Requests

Once you have sent a [pull request] an admin will need to build the site locally, check
it renders acceptably, and then deploy your content to the live site.

You can view the progress of your pull request in its [discussion thread].
Notifications will normally be sent by email to those active or mentioned
in the thread, as well as those watching either the thread or the related repo.

Additional commits made to the same branch (named with the 'patch' prefix by default)
will automatically be added to the pull request.

Check the [fork] and [pull request] help pages for more info.

[discussion thread]: https://github.com/snhack/snhack.github.com/issues
[github help]: https://help.github.com


### Uploading Images

The [new file] icon on the github website only supports text files. You can reference
images hosted elsewhere, but it's sometimes best to upload images to the site itself.

If you're familiar with `git`, you can commit images into a new folder located within
[source/_posts/_images] and named to match your post: `YYYY-MM-DD-name-of-post`.

[source/_posts/_images]: https://github.com/snhack/snhack.github.com/tree/source/source/_posts/_images

An easier option is to attach images to the [discussion thread] of your newly created
pull request, an admin can then commit them into the correct folder.

Use `{{ page.url }}` in your post to automatically reference the correct folder.

    ![MyImage]({{ page.url }}/MyImageFile.jpg)

