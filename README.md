# gitnew
Command to push on a new branch your first changes

Have you ever started to code some new feature before creating a new branch for that? Or you have indeed pushed something new in your new branch, but got some conflicts, because you didn't realize that your main branch wasn't updated? Or even lastly you hate the fact that you have to run plenty of lines of code just to open a merge/pull request to push your new feature for your team to do a review?

Yeah...That's boring.

With `gitnew`, you can do all of that by running a single line of code:

```
gitnew <branch_name> <commit_message>
```

# Installation

Just run:

```
curl -o- https://raw.githubusercontent.com/vidalmatheus/gitnew/main/install.sh | bash
```

```
wget -qO- https://raw.githubusercontent.com/vidalmatheus/gitnew/main/install.sh | bash
```

Are you on GitLab 11.10+? You can open a merge request within `--mr` option:

```
gitnew <branch_name> <commit_message> --mr
```
