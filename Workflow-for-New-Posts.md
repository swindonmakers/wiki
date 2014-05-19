New posts are tweeted and have a google group thread created for comments.  This page documents those additional steps.  

For help with actually creating a post, please see [[contributing website and wiki content|Contributing]].

### Workflow:

* Deploy rendered site, then check that post is live and rendered without issues.

* Create a new google group topic, via [email](mailto:swindon-hackspace@googlegroups.com) or [web](https://groups.google.com/forum/#!newtopic/swindon-hackspace), using the format [shown below](#group-topic).  Ideally, the topic should be created by the `Swindon Hackspace`.  Remember to double-check that the links in the group topic correctly link to the new blog post.

* Copy the identifier for the newly created group thread, and set it for the post's `discuss:` variable.

  The identifier is the last element in the URL that matches the format below:

  https://groups.google.com/forum/#!topic/swindon-hackspace/ywV59enffto

  For the above example, `discuss:  ywV59enffto` would be added to the post's metadata.

* Rebuild and deploy the site to enable the post's share button.

* Tweet a new post notification using the format [shown below](#twitter-post).

---

### Group Topic

_Hint: edit the markdown source of this example, then copy the rendered preview into the email or web form._

`subject: `
New Post: PiFace Control And Display Board

### [PiFace Control And Display Board](http://swindon.hackspace.org.uk/blog/piface-control-and-display-board/)

Author: Robert Longbottom

The Hackspace recently took delivery of a 
[PiFace Control and Display board from Farnell](http://uk.farnell.com/piface/piface-control-display/i-o-board-with-lcd-display-for/dp/2344458).
It is an add-on board for the Raspberry Pi that includes a 16 character by 2 line
display, five push buttons, a toggle button and an IR receiver.

[Read More..](http://swindon.hackspace.org.uk/blog/piface-control-and-display-board/)


---

### Twitter Post

```
New Post: PiFace Control And Display Board, by @AstroFraggle
http://swindon.hackspace.org.uk/blog/piface-control-and-display-board/

http://swindon.hackspace.org.uk/blog/piface-control-and-display-board/Piface.jpg
```
