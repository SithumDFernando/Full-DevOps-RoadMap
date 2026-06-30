# Lab 04: CI/CD Without the Magic

Before learning a specific tool like GitHub Actions, let's understand what a pipeline actually *is*: a sequence of scripts that run in order and stop if one fails.

## 1. Run the "Fake Pipeline" Script

We have provided a bash script that simulates a pipeline. Run it:
```bash
chmod +x scripts/fake-pipeline.sh
./scripts/fake-pipeline.sh
```

**Expected Result:** You should see output for `[BUILD]`, `[TEST]`, and `[PACKAGE]` stages.

## 2. Intentionally Break the Pipeline

Open `scripts/fake-pipeline.sh` in your editor.
Find the `run_tests` function. Change `return 0` to `return 1` to simulate a test failure.

Run the script again:
```bash
./scripts/fake-pipeline.sh
```

**Expected Result:** The script should print a failure message during the `[TEST]` stage and immediately exit. The `[PACKAGE]` stage should *not* run.

## 3. The Takeaway

This is exactly what GitHub Actions, Jenkins, or GitLab CI does under the hood. They run a sequence of commands on a temporary server. If any command returns a non-zero exit code (like `exit 1`), the pipeline fails and halts.
