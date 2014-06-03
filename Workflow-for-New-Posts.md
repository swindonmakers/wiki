New posts are tweeted and have a google group thread created for comments.  This page documents those additional steps.  

For help with actually creating a post, please see [[contributing website and wiki content|Contributing]].

### Workflow:

* Preview, then deploy rendered site, checking that post is live and rendered without issues.  
  (you can do this without commiting any final tweaks just yet, to save an extra commit.) 

* Create a new google group topic, via [email](mailto:swindon-hackspace@googlegroups.com) or [web](https://groups.google.com/forum/#!newtopic/swindon-hackspace), using the format [shown below](#group-topic).  Ideally, the topic should be created by `Swindon Hackspace`.  Before sending, double-check that the links in the group topic correctly link to the new blog post.

* Copy the identifier for the newly created group thread, and set it for the post's `discuss:` variable.

  The identifier is the last element in the URL that matches the format below:

  https://groups.google.com/forum/#!topic/swindon-hackspace/ywV59enffto

  For the above example, `discuss:  ywV59enffto` would be added to the post's metadata.

* Commit final changes. Rebuild and deploy the site to enable the post's share button.

* Tweet a new post notification using the format [shown below](#twitter-post).

---

### Group Topic

_Hint: edit the markdown source of this example, then copy the rendered preview into the email or web form._

`subject: `
New Post: PiFace Shutdown Message

### [PiFace Shutdown Message](http://swindon.hackspace.org.uk/blog/piface-shutdown-message/)

Author: Robert Longbottom

If you're running your Raspberry Pi in a headless mode, sometimes it's hard to know
when shutdown is complete and it's safe to turn off the power. If you have a
[PiFace](http://uk.farnell.com/piface/piface-control-display/i-o-board-with-lcd-display-for/dp/2344458)
you could use that to display a message when shutdown is complete.  In this article
we'll see how to do just that.

[Read More..](http://swindon.hackspace.org.uk/blog/piface-shutdown-message/)


---

### Twitter Post

```
New Post: PiFace Shutdown Message, by @AstroFraggle
http://swindon.hackspace.org.uk/blog/piface-shutdown-message/
```

A photo should be added at the end of the tweet, normally the same one that's set for use on the main index page.  _Note: the photo must be uploaded with the tweet; pasting the URL of a photo into the tweet doesn't work. :(_
