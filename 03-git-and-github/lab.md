# Lab 03: Git Workflows

Practice branching, squashing, and resolving conflicts.

## 1. Branching and Merging

Create a new branch and make a change:
```bash
git checkout -b lab03-feature
echo "Learning Git" > notes.txt
git add notes.txt
git commit -m "feat: add notes"
```
Switch back to `main` and merge:
```bash
git checkout main
git merge lab03-feature
```
**Expected Result:** `notes.txt` is now on the `main` branch.

## 2. Interactive Rebase (Squashing)

Let's make multiple messy commits and squash them into one clean commit.
```bash
git checkout -b squash-practice
echo "Line 1" > draft.txt
git add draft.txt && git commit -m "wip 1"
echo "Line 2" >> draft.txt
git add draft.txt && git commit -m "wip 2"
```

Now, interactively rebase the last 2 commits:
```bash
git rebase -i HEAD~2
```
In the editor that opens, change the word `pick` to `squash` (or `s`) for the second commit. Save and close. In the next editor, write a clean commit message (e.g., `feat: draft document`).

**Expected Result:** `git log` now shows only one clean commit instead of two "wip" commits.

## 3. Simulating and Resolving a Conflict

Let's create a conflict manually.
```bash
# On main
echo "Main version" > conflict.txt
git add conflict.txt && git commit -m "main version"

# Create a branch and change the same line
git checkout -b conflict-branch
echo "Branch version" > conflict.txt
git add conflict.txt && git commit -m "branch version"

# Go back to main and change it differently
git checkout main
echo "Different main version" > conflict.txt
git add conflict.txt && git commit -m "different main version"

# Try to merge
git merge conflict-branch
```
**Expected Result:** Git stops and says `Merge conflict in conflict.txt`.

Fix it:
1. Open `conflict.txt` in your editor. Remove the `<<<<<<`, `======`, and `>>>>>>` markers, leaving the final text you want.
2. Complete the merge:
```bash
git add conflict.txt
git commit -m "fix: resolve merge conflict"
```
