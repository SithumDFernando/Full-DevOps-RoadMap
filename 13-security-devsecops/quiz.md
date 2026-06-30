# Quiz 13

1. What does "Shift Left" mean in the context of security?
<details><summary>Answer</summary>
Moving security testing earlier in the software development lifecycle (to the "left" on a timeline), rather than waiting until the code is in production.
</details>

2. What is the difference between SAST and DAST?
<details><summary>Answer</summary>
SAST (Static) scans the source code without running it. DAST (Dynamic) scans the running application by interacting with its endpoints like an attacker.
</details>

3. If you find a CVE in a Docker image, how do you usually fix it?
<details><summary>Answer</summary>
Update the base image in the `FROM` instruction of your Dockerfile (e.g., move from `ubuntu:20.04` to `ubuntu:22.04`), or run an OS update command (`apt-get update && apt-get upgrade`) during the image build.
</details>
