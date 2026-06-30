# Module 09: Helm

Helm is the package manager for Kubernetes. Think of it like `apt` or `brew`, but for K8s manifests.

## 🧩 Why Templating Matters

In Module 08, we wrote raw YAML. But what happens when you have a `dev` cluster, a `staging` cluster, and a `prod` cluster?
- Do you copy-paste the YAML three times? (No, that causes drift).
- Helm solves this by turning hardcoded values (like `replicas: 2` or `imageTag: v1.0.0`) into variables that can be overridden per environment.

## 📁 Chart Structure

A Helm "package" is called a **Chart**. It looks like this:
```text
my-chart/
  Chart.yaml          # Metadata (name, version)
  values.yaml         # Default configuration values
  templates/          # Raw YAML templates injected with values
    deployment.yaml
    service.yaml
```

## 🔄 Release Lifecycle

- **Install:** `helm install my-release ./my-chart`
- **Upgrade:** `helm upgrade my-release ./my-chart -f values-prod.yaml`
- **Rollback:** `helm rollback my-release 1` (Rolls back to revision 1)

## 🛒 Chart Repositories

You don't have to write charts from scratch for common software. Need a Postgres database?
```bash
helm repo add bitnami https://charts.bitnami.com/bitnami
helm install my-db bitnami/postgresql
```

---
**Next Module:** [Module 10: Terraform](../10-terraform)

**Further Reading:**
- [Helm Documentation](https://helm.sh/docs/)
