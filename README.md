# SENG474 project: stock price prediction for GME (Gamestop corporation)

To create the project, first ensure necessary libraries are installed

run "pip3 install -r requirements.txt" to install necessary libraries if they do not exist.

=======================

# for group members:

Currently, I think the best way forward would probably be to create two branches: main and dev.

main is supposed to be the branch that "always works". The dev branch will be for testing/making new features. Once we all agree on a change to dev, we can merge one of our branches to dev, and after verifying stuff works on dev, we can merge to main.

When you clone this repo, switch to the dev branch, and create a branch from the dev branch (your own new branch. Try to give a descriptive name for what you intend to do on that new branch)

When you write commit messages, try to keep them short and clear as to what you've done.

# some git commands


### cloning: copy remote (internet) repository to edit locally
```
git clone git@github.com:syeo-1/GME_price_prediction_methods.git
```

### switching branches (eg. from main to dev)
```
git checkout dev
```
The above assumes the dev brach already exists

### create a new branch from your current branch and simulatenously switch to it
```
git checkout -b readme_git_commands
```
For the above example, the new branch name is lstm_edits

### check available branches
```
git branch -a
```

### check the branch you're currently on, and if you're up to date with that branch
```
git status
```

### pull in changes if you're not up to date with the branch you're on
```
git pull
```

### adding all of the new files and edits to the current branch (probably not a good idea initially, if you have a lot of extra files/directories)
```
git add -A
```

### adding files selectively
```
git add README.md
```
Add changes to files you've made (eg. git add lstm_gme.ipynb)

### commiting changes to your current branch with a message
```
git commit -m "added git commands to readme"
```

### pushing changes to the remote repository (the one that's on the internet) from your local copy
```
git push
```

### merging specific branch to dev
- click on "branches" this is directly left of the "tags" element on the repository's home page
- find your branch, then click "new pull request"
- for base select "dev" instead of main. Github will give a green check if you can automatically merge
- click "create pull request". This will bring you to a new page
- Since I own the repo, I suspect only I can actually do merging. At this point, we discuss changes super briefly, and I can merge your pull request to dev

### merging the dev branch to main
- after verifying dev still works, we can merge dev to main by making a pull request from dev to main
- click on "branches" this is directly left of the "tags" element on the repository's home page
- find dev, then click "new pull request"
- for base select "main" (if not already selected)
- click "create pull request". This will bring you to a new page
- We discuss changes super briefly, and I can merge dev to main