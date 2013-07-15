## Post Images

Created by Jamie Osborne, Public Domain license.

[Upstream GitHub project](https://github.com/jmeosbn/post_images)


### Description

Use the folder jekyll generates for a post, to store associated images.

Assumes your posts are rendered as `index.html`, into their own folder.



### Usage

Add `post_images.rb` file to your jekyll `_plugins` directory.

Put source images into a folder within `_posts/_images`, named to match the post.

Reference the generated folder from your post using `{{ page.url }}`.

