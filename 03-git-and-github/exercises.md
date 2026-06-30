# Exercises 03

1. **Simulate a 3-way merge conflict:**
   Run the provided script to generate a sandbox repo with a conflict waiting to happen.
   ```bash
   bash scripts/setup-conflict.sh
   cd /tmp/git-conflict-exercise
   git merge branch-a
   ```
2. **Resolve the conflict:**
   Open `file.txt`, choose how you want the final file to look, remove the Git markers, and complete the merge commit.
3. **Open a Pull Request:**
   Go back to the root of this `Full-DevOps-RoadMap` repository (your fork).
   Create a new branch `my-notes`, add some text to `03-git-and-github/README.md`, push the branch to your fork, and open a Pull Request against your own `main` branch via the GitHub UI. Merge it.
