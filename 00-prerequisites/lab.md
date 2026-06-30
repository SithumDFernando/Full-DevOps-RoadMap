# Lab 00: Installation Verification

Follow these steps to verify your local setup.

## 1. Verify Git Installation

Open your terminal and check your Git version:
```bash
git --version
```
**Expected Result:** You should see a version number (e.g., `git version 2.39.0`).

## 2. Verify Docker Installation

Check your Docker version:
```bash
docker --version
```
**Expected Result:** You should see the Docker version (e.g., `Docker version 20.10.21, build baeda1f`).

## 3. Generate an SSH Key

Generate an SSH key to securely authenticate with GitHub:
```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```
Press Enter to accept the default file location and set a secure passphrase.

**Expected Result:** The key is generated and saved in `~/.ssh/id_ed25519`.

## 4. Add the SSH Key to GitHub

Start the ssh-agent and add your key:
```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```

Copy the public key to your clipboard:
```bash
# macOS
pbcopy < ~/.ssh/id_ed25519.pub

# Windows (Git Bash)
clip < ~/.ssh/id_ed25519.pub

# Linux
cat ~/.ssh/id_ed25519.pub
# (Then manually copy the output)
```

Go to GitHub -> Settings -> SSH and GPG keys -> New SSH key. Paste your key and save.

**Expected Result:** The key is added to your GitHub account. Verify by running `ssh -T git@github.com`. It should say "Hi <username>! You've successfully authenticated..."
