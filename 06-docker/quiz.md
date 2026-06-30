# Quiz 06

1. Why should `COPY requirements.txt .` happen *before* `COPY . .` in a Dockerfile?
<details><summary>Answer</summary>
Docker caches layers. If you copy the whole codebase first, any code change invalidates the cache, forcing `pip install` to run again. By copying just `requirements.txt` first, `pip install` is cached unless dependencies change.
</details>

2. What is the difference between an image and a container?
<details><summary>Answer</summary>
An image is a static, read-only template (the recipe/blueprint). A container is a running instance of that image.
</details>

3. What does a Multi-stage build solve?
<details><summary>Answer</summary>
It reduces the final image size and attack surface by leaving behind build tools (compilers, dev headers) and only copying the compiled binaries/libraries into the final runtime stage.
</details>

4. What is the difference between a bind mount and a named volume?
<details><summary>Answer</summary>
A bind mount maps a specific file/folder from your host machine into the container (great for local dev). A named volume is managed entirely by Docker internally and is decoupled from the host's filesystem (great for databases).
</details>

5. Why create a non-root user inside a Dockerfile?
<details><summary>Answer</summary>
Security. If a container runs as root and an attacker breaches it, they have root access inside the container, which makes container-escape attacks to the host machine much easier.
</details>
