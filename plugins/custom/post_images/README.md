## Post Images

Created by Jamie Osborne, Public Domain license.

[Upstream GitHub project](https://github.com/jmeosbn/post_images)


### Description

Use the folder jekyll generates for a post, to store associated images.

Assumes your posts are rendered as `index.html`, into their own folder.


### Usage

Add `post_images.rb` file to your jekyll `_plugins` directory.

Put source images into a folder within `_posts/_images`, named to match the post.

Reference images in the generated folder from your post using `./`


### Example

For a post at `_posts/2013-07-03-my-blog-post.md`.

Add images to the folder `_posts/_images/2013-07-03-my-blog-post`.

    ---
    layout: post
    title: My Blog Post
    date: 2013-07-03
    ---

    ![My Image](./Image.jpg)
