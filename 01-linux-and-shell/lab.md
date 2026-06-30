# Lab 01: Linux Basics & Scripting

In this lab, you will navigate the filesystem, manipulate permissions, and write basic bash scripts.

## 1. Filesystem Navigation

Create a new directory and navigate into it:
```bash
mkdir my-linux-lab
cd my-linux-lab
```
**Expected Result:** You are now inside the `my-linux-lab` directory.

## 2. File Permissions

Create a dummy script and try to run it:
```bash
echo 'echo "Hello, World!"' > hello.sh
./hello.sh
```
**Expected Result:** You will get a `Permission denied` error because the file is not executable.

Make it executable and run it again:
```bash
chmod +x hello.sh
./hello.sh
```
**Expected Result:** It prints `Hello, World!`.

## 3. Running the System Info Script

We've provided a script to gather system stats. Let's make it executable and run it.
```bash
chmod +x ../scripts/system-info.sh
../scripts/system-info.sh
```
**Expected Result:** You will see a printout of your OS version, disk usage, memory, and running process count.

## 4. Running the Backup Script

Let's test the backup script by backing up our lab folder to `/tmp`.
```bash
chmod +x ../scripts/backup-folder.sh
../scripts/backup-folder.sh . /tmp
```
**Expected Result:** A `.tar.gz` archive is created in `/tmp` containing the contents of your current directory.
