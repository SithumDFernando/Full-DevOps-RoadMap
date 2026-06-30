# Module 05: GitHub Actions

GitHub Actions (GHA) is the native CI/CD platform built into GitHub. It allows you to automate workflows based on GitHub events (like pushes, PRs, or issue creation).

## 🧬 Anatomy of a Workflow

Workflows are defined in YAML files located in `.github/workflows/`.

1. **Events (`on`)**: What triggers the workflow (e.g., `push`, `pull_request`, `schedule`, `workflow_dispatch`).
2. **Jobs**: A set of steps that execute on the same runner. Jobs run in parallel by default.
3. **Steps**: Individual tasks inside a job (running a script, or using a pre-built Action like `actions/checkout@v4`).
4. **Runners**: The server where the job runs (`ubuntu-latest`, `windows-latest`, or self-hosted).

## 🔒 Secrets and Environment Variables

- **Secrets**: Encrypted variables (like API keys) stored in GitHub settings. Accessed via `${{ secrets.MY_SECRET }}`.
- **Variables**: Non-sensitive config. Accessed via `${{ vars.MY_VAR }}` or defined locally via `env:`.

## 🔠 Matrix Builds

Matrix strategies allow you to run the same job multiple times with different variables (e.g., testing against Node.js 16, 18, and 20 simultaneously).

## 🚀 Reusable Workflows

To prevent copy-pasting YAML, you can define a workflow with `on: workflow_call`. Other workflows in your organization can then "call" this workflow like a function.

---
**Next Module:** [Module 06: Docker](../06-docker)

**Further Reading:**
- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [Understanding GitHub Actions](https://docs.github.com/en/actions/learn-github-actions/understanding-github-actions)
