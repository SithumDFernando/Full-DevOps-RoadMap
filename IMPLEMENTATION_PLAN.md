# Implementation Plan — DevOps Learning Path Repo

This document is the build spec for this repository. It lists every file to create, what it must contain, and the order to build them in. Use this as the instruction set if you're delegating the content creation to an AI agent (e.g. Claude Code) or building it yourself module by module.

**Global conventions for every module:**
- Each module is a folder `NN-topic-name/`
- Each module contains exactly: `README.md`, `lab.md`, `exercises.md`, `quiz.md`, `scripts/` (if applicable)
- `README.md` files use Mermaid diagrams for any architecture/flow concept (GitHub renders Mermaid natively)
- `lab.md` files use copy-pasteable shell blocks, numbered steps, and an explicit "Expected Result" after each major step
- `quiz.md` has 5–8 questions, answers in a collapsed `<details>` block
- Every module's `README.md` ends with a "Next Module" link and a "Further Reading" list (2–4 links)
- Keep prose high-signal — no filler, no repeated explanations across modules

---

## Phase 0: Repo Scaffolding

| File | Content |
|---|---|
| `/README.md` | Already drafted — main roadmap (see separate file) |
| `/resources/glossary.md` | Alphabetical glossary of DevOps terms, built incrementally as modules are written |
| `/resources/cheatsheets/git-cheatsheet.md` | Common git commands grouped by use case |
| `/resources/cheatsheets/docker-cheatsheet.md` | Common docker/docker-compose commands |
| `/resources/cheatsheets/kubectl-cheatsheet.md` | Common kubectl commands |
| `/resources/cheatsheets/terraform-cheatsheet.md` | Common terraform CLI commands |
| `/resources/troubleshooting.md` | Running log of common errors + fixes, organized by module |

---

## Module 00 — Prerequisites

**Folder:** `00-prerequisites/`

- `README.md`: What tools to install (git, a code editor, Docker Desktop, a terminal emulator), how to create GitHub/cloud accounts, how this repo is organized, how to use the lab/quiz format.
- `lab.md`: Step-by-step install verification — `git --version`, `docker --version`, terminal setup, SSH key generation and adding it to GitHub.
- `exercises.md`: Fork this repo, clone it locally, make a first commit (e.g., adding your name to a `LEARNERS.md` file).
- `quiz.md`: Basic checks (what is a terminal, what is a fork vs a clone, etc.)

---

## Module 01 — Linux and Shell

**Folder:** `01-linux-and-shell/`

- `README.md` covers: filesystem hierarchy (`/etc`, `/var`, `/home` etc.), file permissions (`chmod`, `chown`, octal notation), processes (`ps`, `top`, `kill`), package managers (`apt`/`brew`), piping and redirection (`|`, `>`, `>>`), environment variables.
- `lab.md`: Navigate filesystem, create/modify file permissions, write a bash script that takes arguments, loops over files, and conditionally processes them.
- `scripts/`:
  - `system-info.sh` — prints OS, disk usage, memory, running process count
  - `backup-folder.sh` — takes a source/destination arg and tars a folder with a timestamp
- `exercises.md`: Write a script that finds all `.log` files older than N days and deletes them (dry-run flag required).
- `quiz.md`: Permissions math, piping behavior, process signals.

---

## Module 02 — Networking Basics

**Folder:** `02-networking-basics/`

- `README.md` covers: OSI model (brief, practical framing only), DNS resolution flow, HTTP vs HTTPS, TCP vs UDP, common ports (22, 80, 443, 5432, 6379, 3306), what a firewall does, SSH key-based auth.
- `lab.md`: Use `curl`, `dig`/`nslookup`, `ping`, `traceroute`/`tracepath`, `ssh` into a remote box (or local VM), set up passwordless SSH login.
- `exercises.md`: Diagnose a "simulated" connectivity issue using only CLI tools (provide a script that breaks something locally, e.g., a hosts file entry, and have the learner diagnose it).
- `quiz.md`: Port numbers, DNS record types, HTTP status code categories.

---

## Module 03 — Git and GitHub

**Folder:** `03-git-and-github/`

- `README.md` covers: git internals primer (commits, branches as pointers), branching strategies (trunk-based vs GitFlow — brief comparison table), merging vs rebasing, resolving conflicts, PR workflow, branch protection rules, GitHub Issues basics.
- `lab.md`: Create a branch, make conflicting changes on two branches, resolve the conflict, open a PR against your own fork, merge it. Demonstrate `git rebase -i` for squashing commits.
- `exercises.md`: Simulate a 3-way merge conflict scenario using a provided script that sets up the repo state.
- `quiz.md`: Merge vs rebase tradeoffs, what HEAD is, what a detached HEAD state means.

---

## Module 04 — CI/CD Fundamentals

**Folder:** `04-cicd-fundamentals/`

- `README.md` covers: what CI/CD is and the problem it solves, pipeline stages (build/test/package/deploy), CI vs CD vs continuous deployment (distinction table), YAML syntax primer (since every CI tool uses it), brief landscape comparison (Jenkins, GitHub Actions, GitLab CI, CircleCI — 1 paragraph each, no deep dive).
- `lab.md`: Hand-write a "pipeline" as a single bash script that simulates build → test → package stages with pass/fail exit codes, to internalize the concept before tool-specific syntax is introduced.
- `exercises.md`: Extend the bash "pipeline" script to fail gracefully and print a clear stage-by-stage status report.
- `quiz.md`: Stage ordering, CI vs CD definitions, idempotency concept.

---

## Module 05 — GitHub Actions

**Folder:** `05-github-actions/`

- `README.md` covers: workflow file anatomy (`on`, `jobs`, `steps`), trigger types (push, pull_request, schedule, workflow_dispatch), runners (GitHub-hosted vs self-hosted), secrets and environment variables, matrix builds, caching dependencies (`actions/cache`), reusable workflows and composite actions, artifacts.
- `lab.md`: Build incrementally —
  1. A "hello world" workflow triggered on push
  2. A workflow that lints and tests a sample app (provided in `sample-app/`)
  3. Add a matrix build (multiple language/OS versions)
  4. Add dependency caching
  5. Add a reusable workflow called from a second workflow file
- `.github/workflows/` (within this module's sample-app): `ci.yml`, `reusable-test.yml`
- `sample-app/`: A minimal Node.js or Python app with a test suite, used as the running example for this and the next two modules
- `exercises.md`: Add a workflow that only runs on PRs targeting `main` and posts a comment with test results.
- `quiz.md`: Trigger types, secrets scoping, runner types.

---

## Module 06 — Docker

**Folder:** `06-docker/`

- `README.md` covers: containers vs VMs (diagram), image vs container, Dockerfile instructions (`FROM`, `COPY`, `RUN`, `CMD`, `ENTRYPOINT`, `EXPOSE`), layer caching mechanics, multi-stage builds, `.dockerignore`, Docker Compose basics (services, networks, volumes), bind mounts vs named volumes.
- `lab.md`: Containerize the `sample-app` from Module 05 —
  1. Write a basic single-stage Dockerfile
  2. Optimize it into a multi-stage build (reduce image size, show before/after `docker images` size comparison)
  3. Write a `docker-compose.yml` adding a database service (e.g., Postgres) with a volume
  4. Run the full stack locally with `docker compose up`
- `scripts/build-and-tag.sh`: Builds the image with a git-sha tag
- `exercises.md`: Add a healthcheck to the Dockerfile and Compose file.
- `quiz.md`: Layer caching behavior, image vs container distinction, volume types.

---

## Module 07 — Container Registries

**Folder:** `07-container-registries/`

- `README.md` covers: what a registry is, public vs private registries, Docker Hub vs GHCR vs ECR (comparison table), image tagging strategies (latest vs semver vs git-sha), authentication to registries from CI.
- `lab.md`: Push the image built in Module 06 to GHCR manually via CLI, then automate it: extend the GitHub Actions workflow from Module 05 to build the Docker image and push it to GHCR on merge to `main`.
- `.github/workflows/`: `build-and-push.yml` (full example)
- `exercises.md`: Add a step that scans the image for known vulnerabilities before pushing (preview of Module 13).
- `quiz.md`: Tagging strategy tradeoffs, registry auth methods.

---

## Module 08 — Kubernetes

**Folder:** `08-kubernetes/`

- `README.md` covers: why orchestration, architecture diagram (control plane: API server, etcd, scheduler, controller manager; node components: kubelet, kube-proxy, container runtime), core objects table (Pod, Deployment, ReplicaSet, Service, ConfigMap, Secret, Namespace), Service types (ClusterIP, NodePort, LoadBalancer) and when to use each, Ingress concept, PV/PVC storage model, resource requests/limits, HPA basics.
- `lab.md`: Build incrementally using `kind` or `minikube` —
  1. Set up local cluster
  2. Deploy the containerized app from Module 07 as a Pod, then a Deployment
  3. Expose it via a Service
  4. Add a ConfigMap and Secret for app config/credentials
  5. Add an Ingress controller and route traffic through it
  6. Add resource requests/limits and an HPA
- `manifests/`: `deployment.yaml`, `service.yaml`, `configmap.yaml`, `secret.yaml`, `ingress.yaml`, `hpa.yaml`
- `exercises.md`: Simulate a Pod crash (bad image tag) and practice debugging with `kubectl describe`, `kubectl logs`, `kubectl get events`.
- `quiz.md`: Object purpose matching, Service type differences, what a ReplicaSet does.

---

## Module 09 — Helm

**Folder:** `09-helm/`

- `README.md` covers: why templating matters at scale, chart structure (`Chart.yaml`, `values.yaml`, `templates/`), Helm release lifecycle (install/upgrade/rollback), chart repositories.
- `lab.md`: Convert the raw manifests from Module 08 into a Helm chart, templatize image tag and replica count via `values.yaml`, install/upgrade/rollback the release.
- `charts/sample-app/`: Full chart structure
- `exercises.md`: Add an `environments/` values override pattern (`values-dev.yaml`, `values-prod.yaml`).
- `quiz.md`: Chart vs release vs repository distinction, rollback mechanics.

---

## Module 10 — Terraform

**Folder:** `10-terraform/`

- `README.md` covers: IaC concept and benefits, declarative vs imperative, Terraform core workflow (`init`, `plan`, `apply`, `destroy`), providers and resources, state file purpose and risks, remote state + locking (e.g., S3 + DynamoDB), variables/outputs, modules.
- `lab.md`: Build incrementally —
  1. Provision a single resource (e.g., an S3 bucket or a VM) with local state
  2. Parameterize with variables and outputs
  3. Migrate to remote state with locking
  4. Refactor into a reusable module
  5. Add a GitHub Actions workflow that runs `terraform plan` on PR and `terraform apply` on merge (with a manual approval gate)
- `terraform/`: `main.tf`, `variables.tf`, `outputs.tf`, `modules/`, `backend.tf`
- `.github/workflows/terraform.yml`
- `exercises.md`: Intentionally introduce a state drift scenario (manually change a resource outside Terraform) and practice reconciling it.
- `quiz.md`: State file purpose, plan vs apply, why remote state matters in teams.

---

## Module 11 — Cloud Basics

**Folder:** `11-cloud-basics/`

- `README.md` covers: core service categories (compute, storage, networking, IAM) mapped to one provider (default: AWS — EC2/S3/VPC/IAM), free-tier limits and cost-awareness tips, how this maps to what Terraform provisioned in Module 10.
- `lab.md`: Manually explore the resources Terraform created in the cloud console, then tear them down with `terraform destroy` to avoid charges, with a cost-safety checklist.
- `exercises.md`: Set up a billing alert in the cloud console.
- `quiz.md`: IAM least-privilege concept, free-tier gotchas.

---

## Module 12 — Monitoring and Logging

**Folder:** `12-monitoring-logging/`

- `README.md` covers: observability pillars (metrics, logs, traces), Prometheus architecture and scrape model, Grafana dashboards, centralized logging concepts (e.g., Loki or ELK — pick one as primary example), alerting basics.
- `lab.md`: Deploy Prometheus + Grafana into the Module 08 cluster via Helm, scrape metrics from the sample app, build a basic dashboard, set up one alert rule.
- `manifests/` or `charts/`: monitoring stack values file
- `exercises.md`: Add a custom application metric (e.g., request count) and graph it.
- `quiz.md`: Metrics vs logs vs traces, what a scrape interval is.

---

## Module 13 — Security and DevSecOps

**Folder:** `13-security-devsecops/`

- `README.md` covers: shift-left security concept, secret scanning (e.g., gitleaks), dependency scanning (e.g., Dependabot/Snyk), container image scanning (e.g., Trivy), SAST vs DAST distinction, where each fits in the pipeline (diagram).
- `lab.md`: Add a secret-scanning step and a Trivy image-scan step to the GitHub Actions pipeline built across Modules 05–07; deliberately introduce a vulnerable dependency and watch the pipeline catch it.
- `.github/workflows/security-scan.yml`
- `exercises.md`: Configure the pipeline to fail the build only on HIGH/CRITICAL severity findings.
- `quiz.md`: SAST vs DAST, shift-left meaning, severity triage logic.

---

## Module 14 — Capstone Projects

**Folder:** `14-capstone-projects/`

- `README.md`: Overview of all 3 capstones, grading checklist format, how to submit/showcase (e.g., portfolio README template).
- `project-1-cicd-pipeline/README.md`: Requirements — build, test, containerize an app of the learner's choice end-to-end via GitHub Actions. Checklist of required pipeline stages.
- `project-2-k8s-terraform-deploy/README.md`: Requirements — provision a cluster via Terraform, deploy Project 1's app to it via Helm, fully automated through CI/CD.
- `project-3-observability-security/README.md`: Requirements — add monitoring, alerting, and security scanning to Project 2's pipeline.
- Each project README includes a "Definition of Done" checklist and a suggested architecture diagram (Mermaid) the learner fills in themselves.

---

## Build Order Summary (for an agent executing this plan)

1. Scaffold all folders and empty files first (fast, establishes structure)
2. Populate `resources/glossary.md` and cheatsheets last, incrementally, after each module is written (pull terms from each module as it's completed)
3. Write modules strictly in numeric order — later modules' labs depend on artifacts (sample app, Docker image, manifests, Terraform state) created in earlier ones
4. After each module, update the status column in the root `README.md` roadmap table
5. Capstone module is written last, after all dependency modules exist

## Content style rules (apply to every file)

- No repeated definitions across modules — define a term once (in the module where it's first used), link back to it afterward via `resources/glossary.md`
- Every lab step must have a verifiable "Expected Result" so learners know if they're on track
- Keep diagrams to Mermaid syntax only (renders natively on GitHub, no external tools needed)
- Avoid vendor lock-in language where possible — note cloud-specific steps explicitly so AWS/Azure/GCP learners know what to substitute
