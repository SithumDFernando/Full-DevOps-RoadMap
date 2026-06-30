# Module 13: Security & DevSecOps

Security is no longer something applied at the end of the development lifecycle. "Shift Left" means integrating security practices into every phase, starting from the developer's laptop.

## 🛡️ The Layers of DevSecOps

1. **SAST (Static Application Security Testing):** Scanning source code for vulnerabilities (e.g., SQL injection) before it is compiled. (Tools: SonarQube, GitHub Advanced Security).
2. **SCA (Software Composition Analysis):** Scanning `package.json` or `requirements.txt` to find known vulnerabilities in third-party open-source libraries. (Tools: Dependabot, Snyk).
3. **Container Scanning:** Checking Docker images for outdated OS packages or known CVEs (Common Vulnerabilities and Exposures). (Tools: Trivy, Clair).
4. **IaC Scanning:** Checking Terraform/Kubernetes manifests for misconfigurations (e.g., leaving an S3 bucket public). (Tools: Checkov, tfsec).
5. **DAST (Dynamic Application Security Testing):** Scanning the running application from the outside, acting like a hacker trying to break in. (Tools: OWASP ZAP).

## 🔑 Secret Management

- **NEVER** commit passwords, API keys, or tokens to Git.
- **Tools:** Use HashiCorp Vault, AWS Secrets Manager, or GitHub Secrets to inject them at runtime.
- **Scanning:** Use tools like `trufflehog` or `git-secrets` in your CI pipeline to block commits that contain hardcoded secrets.

## 🕸️ Network Security (Zero Trust)

"Zero Trust" means you don't trust any network, not even your internal VPC. Every service must authenticate with every other service (often achieved using mTLS and a Service Mesh like Istio in Kubernetes).

---
**Next Module:** [Module 14: Capstone Projects](../14-capstone-projects)

**Further Reading:**
- [OWASP Top 10](https://owasp.org/www-project-top-ten/)
- [What is DevSecOps?](https://www.redhat.com/en/topics/devops/what-is-devsecops)
