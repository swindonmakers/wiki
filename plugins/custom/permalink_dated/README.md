## Permalink (Dated)

Created by Jamie Osborne, MIT License.

[Upstream GitHub project](https://github.com/jmeosbn/permalink_dated)


### Description

Use an alternative permalink format for duplicate titles.

Allows using a simple permalink by default, or a dated permalink as needed.


### Usage

Add `permalink_dated.rb` file to your jekyll `_plugins` directory.

Set `dated_url: true` in a post that you want to retain the date in the URL.


### Example

On a site using a simple permalink style, a post with the filename
`2013-07-03-meeting-report` may have the URL: `/blog/meeting-report`.

If future posts are to have the same title, then the `dated_url` field can be set
to retain the date in the URL:

    ---
    layout: post
    title: Meeting Report
    date: 2013-07-03
    dated_url: true
    ---

The url for this post is `/blog/2013-07-03-meeting-report`.

The actual format used can be defined in `_config.yml` with `permalink_dated`.
