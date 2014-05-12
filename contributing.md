### CONTRIBUTE

Please fork this repo, then clone the `source` branch of **your** fork:

```sh
git clone -b source https://github.com/YOURUSERNAME/snhack.github.com snhack
```

Each pull request should have a "topic" branch all to itself. Create one before making
any commits:

```sh
git checkout -b fix-for-that-thing
```

Before submitting a pull request, use `git rebase` to `squash` (or `fixup`) any
additional commits that make your change set hard to follow:

```sh
git rebase -i head~10
```

Push the branch up to your fork on Github.

Send a pull request to the snhack/snhack.github.com.