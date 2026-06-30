#!/bin/bash
# Sets up a 3-way merge conflict for exercise purposes.

REPO_DIR="/tmp/git-conflict-exercise"
rm -rf $REPO_DIR
mkdir -p $REPO_DIR
cd $REPO_DIR

git init
echo "Initial content" > file.txt
git add file.txt
git commit -m "Initial commit"

# Create branch A
git checkout -b branch-a
echo "Content from Branch A" > file.txt
git commit -am "Commit on Branch A"

# Go back to main, create branch B
git checkout main
git checkout -b branch-b
echo "Content from Branch B" > file.txt
git commit -am "Commit on Branch B"

echo "Repository set up in $REPO_DIR."
echo "You are currently on branch-b."
echo "To trigger the conflict, run: git merge branch-a"
