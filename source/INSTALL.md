## snhack.github.com

__Note:  master branch is overwritten during compilation.__

This site is built with [octopress] and requires a ruby installation to render
the [source branch] to master.

[octopress]: http://octopress.org/docs
[octopress documentation]: http://octopress.org/docs/setup/
[source branch]: https://github.com/snhack/snhack.github.com/tree/source
[Fork this repo]: https://help.github.com/articles/fork-a-repo
[pull request]: https://help.github.com/articles/using-pull-requests


### Install Site Locally

A local installation allows changes to be previewed accurately, so they are rendered to
the live site as expected.  This is especially important when making changes to the site
itself, or submitting content that uses non-markdown extensions (such as those provided
by octopress and jekyll).

[Fork this repo], then clone your fork's **source branch** locally.

```sh
git clone -b source git@github.com:<YOURUSERNAME>/snhack.github.com.git snhack
cd snhack
ruby --version        # Should report Ruby 1.9.3
```

Install dependencies, but do not run `rake install` (it's been done already).

```sh
gem install bundler
#rbenv rehash         # Only needed if you use rbenv
bundle install
```

Test your installation by generating the site.

```sh
rake generate         # Generates posts and pages into the public directory
```

If you receive an error *"You have already activated ..., but your Gemfile requires ..."*,
then prefix the command with `bundle exec`.

If you have any other problems, see the [octopress documentation] for more info on
installing ruby and other dependencies.



### Adding and Previewing Changes

Creating a new topic branch is preferred, especially for changes to the site's
source (including templates and styles).

```sh
git checkout -b mypost
```

Make your changes, such as a [new post or page] in [markdown] format.

```sh
rake new_post["Zombie Ninjas Attack"]

# Edit the new post created by rake
nano source/_posts/2011-07-03-zombie-ninjas-attack.md
```

[new post or page]: http://octopress.org/docs/blogging
[markdown]: http://daringfireball.net/projects/markdown/dingus


Generate and preview your changes locally at `http://localhost:4000`.

```sh
rake generate         # Generates posts and pages into the public directory
rake preview          # Watches, and mounts a webserver at http://localhost:4000
```

Commit changes, then push them to your fork.

```sh
git add source/_posts/2011-07-03-zombie-ninjas-attack.md
git commit -m "Post: zombie-ninjas-attack"
git push origin mypost
```

Submit a [pull request] to this repo, using the button shown on github for your new
branch.

Once your changes are accepted, an admin will need to generate the site
using `rake deploy` before they become live.
