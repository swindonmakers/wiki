We've created an IRC channel for ephemeral, instant-messaging-style chatter.  Ask the IRC client of your choice to connect to irc.freenode.org, the channel #snhack.  You can use [irc://irc.freenode.org/snhack](irc://irc.freenode.org/snhack) if your browser is set up for irc:// URLs (most aren't, in my experience), or [use freenode's own webchat](http://webchat.freenode.net?channels=%23snhack&uio=Mj10cnVlJjk9dHJ1ZQ58).
If you are a member in good standing, and want to be an op on the channel, please make sure your nick is registered (see [http://freenode.net/faq.shtml#nicksetup](freenode's documentation), and talk to an existing op.

Adding an op
------------
As an existing op, to add a new one, first make sure you are, in fact, talking to a member in good standing (I'm afraid I can't offer much advice as to how).  Then `/msg chanserv flags theirnick #snhack +Oo` to get chanserv to auto-op the user.  (+O will make it auto-op on the next join, +o will make it op them now.)