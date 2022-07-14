# gitnew
Command to push on a new branch your first changes

```
           _ _
      __ _(_) |_ _ __   _____      __
     / _\` | | __| '_ \ / _ \ \ /\ / /
    | (_| | | |_| | | |  __/\ V  V /
     \__, |_|\__|_| |_|\___| \_/\_/
     |___/

```
Have you ever started to code some new feature before creating a new branch for that? Or you have indeed pushed something new in your new branch, but got some conflicts, because you didn't realize that your main branch wasn't updated? Or even lastly you hate the fact that you have to run plenty of lines of code just to open a merge/pull request to push your new feature for your team to do a review?

Yeah...That's boring.

With `gitnew`, you can do all of that by running a single line of code:

```
gitnew <new_branch_name> <commit_message>
```

# Installation

Just run:

```
bash <(curl -o- https://raw.githubusercontent.com/vidalmatheus/gitnew/main/install.sh)
```

or

```
bash <(wget -qO- https://raw.githubusercontent.com/vidalmatheus/gitnew/main/install.sh)
```

# GitLab
If you are on GitLab 11.10+, your merge request will be open automatically.


# Under the hood
![image](https://user-images.githubusercontent.com/47875248/178903080-bb17c468-6322-44d3-b489-6f98666a8ad6.png)
