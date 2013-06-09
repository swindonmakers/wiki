snhack.github.com
=================

__Note:  master branch is overwritten during compilation.__

This site is built with [octopress] and requires a ruby installation to render
the [source branch] to master.

[octopress]: http://octopress.org/docs
[octopress documentation]: http://octopress.org/docs/setup/
[source branch]: https://github.com/snhack/snhack.github.com/tree/source
[fork this repo]: https://github.com/snhack/snhack.github.com/fork_select
[pull request]: https://github.com/snhack/snhack.github.com/pulls


### Super minimal way to add a post

> Follow this section to submit a standard blog post using the github site.

Visit this project's [source branch] on the github.com website, and load
the [source/_posts] folder.

[source/_posts]: https://github.com/snhack/snhack.github.com/tree/source/source/_posts

Use the [new file icon] that's located above the folder listing.
Github will automatically fork this project as required.

Name the new file using your preferred post date and title,
according to the pattern: `YYYY-MM-DD-url-safe-title.md`.

[new file icon]: https://github.com/blog/1327-creating-files-on-github
[naming it]: https://github.com/blog/1436-moving-and-renaming-files-on-github

Enter basic [post metadata], followed by your content as plain text or [markdown].
See [this example post] for a template.

[Markdown] is used to add rich text such as headers, italics and links.
Various tools exist to [preview markdown], the main difference being that the rendered
post will have a title header added instead of the raw metadata.

[this example post]: https://raw.github.com/snhack/snhack.github.com/source/source/_posts/_examples/2012-11-06-example-post.md
[preview]: https://github.com/snhack/snhack.github.com/blob/source/source/_posts/_examples/2012-11-06-example-post.md

Use the `Propose New File` button to save the post and add it to a pull request.
Ensure the base branch is set to this repo's `source` branch, review the changes
being sent (especially the `Files Changed` tab), then hit `Send pull request`.

[post metadata]: http://octopress.org/docs/blogging
[markdown]: http://daringfireball.net/projects/markdown/basics
[preview markdown]: http://daringfireball.net/projects/markdown/dingus



### Install Site Locally

> This section explains how to install the entire site and required ruby gems to your local machine.  
> Those submitting posts as standard text or markdown can do so using the much easier workflow described above.

A local installation allows changes to be previewed accurately, so they are rendered to
the live site as expected.  This is especially important when making changes to the site
itself, or submitting content that uses non-markdown extensions - such as those provided
by octopress and jekyll.

[Fork this repo], then clone your fork's **source branch** locally.

	git clone -b source git@github.com:<yourusername>/snhack.github.com.git snhack
	cd snhack
	ruby --version      # Should report Ruby 1.9.3


Install dependencies, but do not run `rake install` (it's been done already).

	gem install bundler rake
	rbenv rehash        # Only needed with rbenv
	bundle install

If you have any problems, see the [octopress documentation] for more info on installing
ruby and other dependencies.



### Adding and Previewing Changes

> Standard git/rake workflow for users who have installed the site locally.

Creating a new topic branch is preferred, especially for changes to the site's
source (including templates and styles).

	git checkout -b myfix

Make your changes, such as a [new post or page] in [markdown] format.

	rake new_post["Zombie Ninjas Attack"]

	# Edit the new post created by rake
	nano source/_posts/2011-07-03-zombie-ninjas-attack.md

[new post or page]: http://octopress.org/docs/blogging
[markdown]: http://daringfireball.net/projects/markdown


Generate and preview your changes locally at `http://localhost:4000`.

	rake generate   # Generates posts and pages into the public directory
	rake preview	# Watches, and mounts a webserver at http://localhost:4000


Commit changes, then push them to your fork.

	git commit -am "That fix, for the thing."
	git push origin myfix

Submit a [pull request] to this repo (use the button shown on your new branch).

Once your changes are accepted, an admin will need to generate the site
using `rake deploy` before they become live.
