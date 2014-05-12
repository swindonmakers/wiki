### Issues

Please include any relevant information or screenshots to help identify the problem
and/or improvement that needs attention.

You can view the progress of issues in their [discussion thread].
Notifications will normally be sent by email to those active or mentioned
in the thread, as well as those watching either the thread or the related repo.

[discussion thread]: https://github.com/snhack/snhack.github.com/issues



### Pull Requests

Please fork this repo, then clone the `source` branch of **your** fork:

```sh
git clone -b source https://github.com/YOURUSERNAME/snhack.github.com snhack
```

Each pull request should have a 'topic' branch all to itself. Create one before making
any commits:

```sh
git checkout -b fix-that-thing
```

Commit your changes into the topic branch, using `git rebase` to *squash* or *fixup* any
extra commits that make the changeset hard to follow:

```sh
# interactive rebase using the last 10 commits
git rebase -i head~10
```

Push the branch up to your fork on Github.

Send a pull request to the snhack/snhack.github.com.