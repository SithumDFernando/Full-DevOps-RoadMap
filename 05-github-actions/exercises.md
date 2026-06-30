# Exercises 05

1. **Add a Linter:**
   Modify `ci.yml` (the one in your `.github/workflows/` folder) to add a new step *before* the tests run. The step should install `flake8` (`pip install flake8`) and run it against `app.py`.
2. **Break the Build:**
   Introduce a syntax error into `app.py` or modify `test_app.py` so that a test fails. Commit and push. Ensure GitHub Actions reports a failure and marks a red `X` next to your commit.
3. **PR Comments:**
   (Advanced) Add a new workflow that triggers *only* on `pull_request` to `main`. Use the `actions/github-script@v6` action to automatically post a comment saying "Thank you for the PR!" when a PR is opened.
