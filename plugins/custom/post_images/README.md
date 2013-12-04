## Post Images

Use the folder jekyll generates for a post, to store associated assets.

Assumes your posts are rendered as `index.html`, into their own folder.


### Usage

Add `post_images.rb` file to your jekyll `_plugins` directory.

Put source assets into a folder within `_posts/_assets`, named to match the post.

Reference assets in the generated folder using a relative path: `Image.jpg`.


### Example

For a post at `_posts/2013-07-03-my-blog-post.md`.

Add assets to the folder `_posts/_assets/2013-07-03-my-blog-post`.

    ---
    layout: post
    title:  My Blog Post
    date:   2013-07-03
    ---

    ![My Image](Image.jpg)


### Notes:

Also copies the raw source file into the generated post folder.


### Author

Created by [Jamie Osborne](https://github.com/jmeosbn).

[Upstream GitHub project](https://github.com/jmeosbn/post_images)

### License

[MIT License](LICENSE).
