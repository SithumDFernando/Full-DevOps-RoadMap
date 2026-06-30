# Exercises 04

1. **Extend the Bash Pipeline:**
   Open `scripts/fake-pipeline.sh`.
   Add a new stage called `run_deploy` that prints `[DEPLOY] Deploying to staging...`.
   Call this stage at the end of the pipeline, but *only* if the `PACKAGE` stage succeeded.

2. **Graceful Failures:**
   Modify the script so that instead of nested `if` statements, it uses a flatter, more readable structure.
   *(Hint: use `|| exit 1` after calling a function, e.g., `run_build || { echo "Failed!"; exit 1; }`)*

3. **Status Report:**
   Write a summary array in the script that tracks the status of each stage (e.g., `BUILD: PASS`, `TEST: FAIL`) and prints the full summary at the very end of the script before it exits.
