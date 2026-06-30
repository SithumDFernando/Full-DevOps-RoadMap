# Quiz 01

1. What does the octal permission `644` represent?
<details><summary>Answer</summary>
Owner can read and write (6). Group can read (4). Others can read (4). Typical for standard files.
</details>

2. What is the difference between `>` and `>>`?
<details><summary>Answer</summary>
`>` redirects output and overwrites the target file. `>>` appends the output to the end of the file.
</details>

3. What does `kill -9 <PID>` do compared to just `kill <PID>`?
<details><summary>Answer</summary>
`kill` sends a SIGTERM signal, asking the process to gracefully shut down. `kill -9` sends a SIGKILL signal, immediately forcing the kernel to terminate the process without giving it a chance to clean up.
</details>

4. Where are system configuration files typically located in Linux?
<details><summary>Answer</summary>
`/etc`
</details>

5. What does the `|` (pipe) operator do?
<details><summary>Answer</summary>
It takes the standard output (stdout) of the command on the left and passes it as standard input (stdin) to the command on the right.
</details>
