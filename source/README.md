## snhack.github.com

__Note:  master branch is overwritten during compilation.__

This file details how to submit a new post. Please see the [INSTALL](INSTALL.md) file for full
details on how to build and preview the entire site locally.


### Super minimal way to add a post

> Use this workflow when submitting a blog post using standard text or markdown.

Load the [source/_posts] folder, then click the [new file] icon above its listing.
[(show)][new-file]

[new-file]: http://swindon.hackspace.org.uk/images/help/1-new-file.png
[commit-file]: http://swindon.hackspace.org.uk/images/help/2-commit-file.png
[branch-compare]: http://swindon.hackspace.org.uk/images/help/3-branch-compare.png
[send-pull-request]: http://swindon.hackspace.org.uk/images/help/4-send-pull-request.png

[source/_posts]: https://github.com/snhack/snhack.github.com/tree/source/source/_posts
[fork]: https://help.github.com/articles/fork-a-repo
[pull request]: https://help.github.com/articles/using-pull-requests

Name the file using the post date and title, in lowercase,
according to the pattern: `YYYY-MM-DD-url-safe-title.md`.  [(show)][commit-file]

[new file]: https://github.com/blog/1327-creating-files-on-github
[naming it]: https://github.com/blog/1436-moving-and-renaming-files-on-github

Enter the post metadata and content, formatted using [markdown].
Here's a [template] and some [examples].

[template]: https://raw.github.com/snhack/snhack.github.com/source/source/_posts/_examples/2012-01-01-template.md
[examples]: https://github.com/snhack/snhack.github.com/tree/source/source/_posts/_examples

Use the `Propose New File` button to commit the post (to a new branch in your own [fork]).

The new branch will be compared to this repo. Check the changes and click the [pull request] link.  [(show)][branch-compare]

Add a title and any other relevant info or images, then hit
`Send Pull Request`.  [(show)][send-pull-request]

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
[github training]: http://training.github.com/


### Uploading Images

The [new file] icon on the github website only supports text files. You can reference
images hosted on another server, but it's preferred to upload images to the site itself.

If you're familiar with `git`, you can commit images into a new folder located within
[source/_posts/_assets] and named to match your post: `YYYY-MM-DD-name-of-post`. Assets
in such a folder can be referenced using relative paths:

    ![MyImage](MyImageFile.jpg)

[source/_posts/_assets]: https://github.com/snhack/snhack.github.com/tree/source/source/_posts/_assets

If you're unfamiliar with `git`, you can attach images to the [discussion thread] of your
newly created pull request. An admin will commit them into the correct folder for you.

