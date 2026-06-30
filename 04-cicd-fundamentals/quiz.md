# Quiz 04

1. What is the defining difference between Continuous Delivery and Continuous Deployment?
<details><summary>Answer</summary>
Continuous Delivery means the code is *ready* to deploy and waits for a manual approval/click. Continuous Deployment means the deployment happens automatically without human intervention.
</details>

2. Why is idempotency important in CI/CD pipelines?
<details><summary>Answer</summary>
Idempotency ensures that running the same pipeline multiple times yields the same result without causing errors or duplicating resources. It makes pipelines predictable and safe to retry.
</details>

3. In standard shell scripting, what exit code signifies success?
<details><summary>Answer</summary>
Exit code `0`. Any non-zero exit code (e.g., `1`) indicates an error or failure.
</details>

4. In YAML, how do you define a list/array?
<details><summary>Answer</summary>
Using dashes (`-`) at the same indentation level.
</details>

5. Why should a pipeline fail immediately if a test fails?
<details><summary>Answer</summary>
To prevent broken code from proceeding to the packaging or deployment stages (fail-fast principle), saving time and preventing bad code from reaching production.
</details>
