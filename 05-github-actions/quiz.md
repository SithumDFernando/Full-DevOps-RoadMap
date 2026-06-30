# Quiz 05

1. What does the `workflow_dispatch` trigger do?
<details><summary>Answer</summary>
It adds a "Run workflow" button to the GitHub UI, allowing you to trigger the pipeline manually.
</details>

2. How are variables defined in the `matrix` accessed within the steps?
<details><summary>Answer</summary>
Using the `${{ matrix.variable_name }}` syntax.
</details>

3. Why use `actions/checkout@v4`?
<details><summary>Answer</summary>
The runner starts as a blank slate. The checkout action clones your repository into the runner's workspace so your pipeline can access your code.
</details>

4. What is the difference between a GitHub-hosted runner and a self-hosted runner?
<details><summary>Answer</summary>
GitHub-hosted runners are VMs managed by GitHub (ephemeral, fresh state every time). Self-hosted runners are your own servers that you attach to GitHub (persistent, potentially faster, can access internal networks).
</details>

5. Can a workflow access a secret if it is triggered by a PR from a fork?
<details><summary>Answer</summary>
By default, no. PRs from forks do not have access to repository secrets for security reasons (to prevent malicious code from exfiltrating secrets).
</details>
