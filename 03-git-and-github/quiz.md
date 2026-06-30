# Quiz 03

1. What does `HEAD` refer to in Git?
<details><summary>Answer</summary>
HEAD is a pointer to the current commit your working directory is based on. Usually, it points to the tip of your current branch.
</details>

2. What is a "detached HEAD" state?
<details><summary>Answer</summary>
It means you have checked out a specific commit (e.g., `git checkout a1b2c3d`) rather than a branch name. Any new commits made in this state won't belong to any branch.
</details>

3. When should you avoid using `git rebase`?
<details><summary>Answer</summary>
You should never rebase commits that have already been pushed to a shared remote branch that others might be basing their work on. Rewriting history disrupts their local repos.
</details>

4. What is the difference between `git fetch` and `git pull`?
<details><summary>Answer</summary>
`git fetch` downloads the latest changes from the remote tracking branches but doesn't merge them into your local branch. `git pull` does a fetch AND immediately merges the changes.
</details>

5. Why is "Squash and Merge" popular for Pull Requests?
<details><summary>Answer</summary>
It combines all the messy "work in progress" commits from a feature branch into a single, clean commit on the main branch, making the history easier to read and revert if necessary.
</details>
