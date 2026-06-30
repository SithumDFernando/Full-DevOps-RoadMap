# Quiz 07

1. Why is deploying the `latest` tag considered an anti-pattern in production?
<details><summary>Answer</summary>
Because `latest` is mutable. If production breaks, you don't know which exact code version `latest` points to, making immediate rollbacks incredibly difficult.
</details>

2. What does `ghcr.io` stand for?
<details><summary>Answer</summary>
GitHub Container Registry.
</details>

3. What is the benefit of tagging images with the Git SHA?
<details><summary>Answer</summary>
Traceability. If you see image `sample-app:abc123f` running in production, you can look up commit `abc123f` in Git and see exactly what code is executing.
</details>

4. How does GitHub Actions authenticate to GHCR without you manually creating a secret?
<details><summary>Answer</summary>
It uses the ephemeral, automatically generated `${{ secrets.GITHUB_TOKEN }}` which is scoped to the repository and workflow run.
</details>
