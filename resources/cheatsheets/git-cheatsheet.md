# Git Cheatsheet

### Configuration
- `git config --global user.name "Name"`: Set your username globally.
- `git config --global user.email "email@example.com"`: Set your email globally.

### Creating & Cloning Repositories
- `git init`: Initialize a new local repository.
- `git clone <url>`: Clone an existing repository from a remote URL.

### Basic Workflow (Status, Add, Commit)
- `git status`: Check the status of your working directory (modified, staged, untracked files).
- `git add <file>`: Stage a specific file for the next commit.
- `git add .`: Stage all modified and new files.
- `git commit -m "Message"`: Commit your staged changes with a descriptive message.

### Branching & Merging
- `git branch`: List all local branches.
- `git branch <branch-name>`: Create a new branch.
- `git checkout <branch-name>` (or `git switch <branch-name>`): Switch to the specified branch.
- `git checkout -b <branch-name>`: Create a new branch and switch to it immediately.
- `git merge <branch-name>`: Merge the specified branch into your current branch.

### Rebasing
- `git rebase <base-branch>`: Rebase your current branch onto the specified base branch.
- `git rebase -i HEAD~<n>`: Interactive rebase for the last `<n>` commits (useful for squashing commits).

### Stashing
- `git stash`: Temporarily shelf (stash) changes you've made to your working copy.
- `git stash pop`: Apply the most recently stashed changes and remove them from the stash list.
- `git stash list`: View all your stashes.

### Viewing History
- `git log`: View commit history.
- `git log --oneline --graph --all`: View a compact, visual representation of the commit history across all branches.
- `git diff`: View changes made to files that haven't been staged yet.
- `git diff --staged`: View changes that have been staged but not yet committed.

### Remotes
- `git remote -v`: View configured remotes and their URLs.
- `git remote add origin <url>`: Add a new remote named "origin".
- `git push -u origin <branch-name>`: Push your branch to the remote repository and set up tracking.
- `git push`: Push commits to the remote repository.
- `git pull`: Fetch and merge changes from the remote repository to your current branch.
- `git fetch`: Fetch changes from the remote repository without merging them.
