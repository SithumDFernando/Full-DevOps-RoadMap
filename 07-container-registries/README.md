# Module 07: Container Registries

A container registry is a storage and distribution system for named container images. It is to Docker images what GitHub is to source code.

## 🏗️ The Registry Landscape

| Registry | Description | Use Case |
|----------|-------------|----------|
| **Docker Hub** | The default, public registry. | Open source, public images (`ubuntu`, `nginx`). |
| **GHCR (GitHub Container Registry)** | Built into GitHub. Free for public repos. | CI/CD pipelines running on GitHub Actions. |
| **AWS ECR / Azure ACR / GCP Artifact Registry** | Cloud-native private registries. | Enterprise apps running on cloud infrastructure. |

## 🏷️ Image Tagging Strategies

When pushing an image, you must tag it.
- **`latest`**: A moving pointer to the most recent build. **DO NOT rely on this in production.** It makes rollbacks impossible because you don't know exactly what `latest` was yesterday.
- **SemVer (`v1.2.0`)**: Good for public libraries or CLI tools.
- **Git SHA (`a1b2c3d`)**: The gold standard for internal apps. Every image maps exactly to the Git commit that produced it.

## 🔐 Authentication in CI

To push an image from a CI pipeline (like GitHub Actions) to a registry, the pipeline needs credentials.
- For GHCR: Use `${{ secrets.GITHUB_TOKEN }}` (automatically provided by GitHub).
- For AWS ECR: Use AWS Access Keys stored in GitHub Secrets, or OIDC (OpenID Connect) for secretless auth.

---
**Next Module:** [Module 08: Kubernetes](../08-kubernetes)

**Further Reading:**
- [GitHub Container Registry Docs](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry)
