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


### cloning
```
git clone git@github.com:syeo-1/GME_price_prediction_methods.git
```

### switching branches (eg. from main to dev)
```
git checkout dev
```
The above assumes dev already exists

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

### commiting changes to your current branch with a message
```
git commit -m "added git commands to readme"
```