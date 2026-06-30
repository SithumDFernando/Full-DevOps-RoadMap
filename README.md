# DevOps Learning Path 🚀

A self-paced, hands-on, incremental curriculum to learn DevOps from the ground up — Linux fundamentals through CI/CD, Docker, Kubernetes, Terraform, and beyond.

This repo is structured as a series of modules. Each module builds on the previous one, so work through them in order unless you already have solid background in a topic.

---

## How to use this repo

1. Start at `00-prerequisites/` and move sequentially through the numbered folders.
2. Each module contains:
   - `README.md` — concepts, theory, diagrams
   - `lab.md` — hands-on, copy-pasteable exercises
   - `scripts/` — supporting scripts used in the lab
   - `exercises.md` — practice tasks to do on your own
   - `quiz.md` — a short checkpoint quiz before moving on
3. Don't skip the labs. DevOps is a practice-based discipline — reading without doing won't stick.
4. Use the `resources/` folder for cheatsheets, a glossary, and troubleshooting tips as you go.
5. Finish with the `14-capstone-projects/` module, which ties everything together into real, portfolio-worthy projects.

---

## Prerequisites

- A computer (Linux, macOS, or WSL2 on Windows)
- A free [GitHub account](https://github.com)
- A free-tier account on one cloud provider (AWS, Azure, or GCP — pick one; AWS is used as the default reference throughout this repo)
- Basic comfort with using a terminal (we cover this in Module 1 if not)
- Curiosity and patience — some labs take a few hours

---

## Roadmap

| Phase | Module | Topics | Status |
|---|---|---|---|
| 0 | [00-prerequisites](./00-prerequisites) | Tooling setup, accounts, repo structure orientation | ⬜ |
| 1 | [01-linux-and-shell](./01-linux-and-shell) | Filesystem, permissions, processes, bash scripting | ⬜ |
| 1 | [02-networking-basics](./02-networking-basics) | DNS, HTTP/HTTPS, ports, SSH, firewalls | ⬜ |
| 1 | [03-git-and-github](./03-git-and-github) | Branching, merging, rebasing, PR workflow | ⬜ |
| 2 | [04-cicd-fundamentals](./04-cicd-fundamentals) | CI/CD concepts, pipeline stages, YAML basics | ⬜ |
| 3 | [05-github-actions](./05-github-actions) | Workflows, jobs, runners, secrets, matrix builds, reusable workflows | ⬜ |
| 4 | [06-docker](./06-docker) | Dockerfiles, layers, multi-stage builds, Compose | ⬜ |
| 4 | [07-container-registries](./07-container-registries) | Docker Hub, GHCR, ECR, image publishing in CI | ⬜ |
| 5 | [08-kubernetes](./08-kubernetes) | Architecture, Pods, Deployments, Services, Ingress, storage | ⬜ |
| 5 | [09-helm](./09-helm) | Charts, templating, releases | ⬜ |
| 6 | [10-terraform](./10-terraform) | Providers, resources, state, modules, CI integration | ⬜ |
| 7 | [11-cloud-basics](./11-cloud-basics) | Compute, storage, networking, IAM fundamentals | ⬜ |
| 8 | [12-monitoring-logging](./12-monitoring-logging) | Prometheus, Grafana, centralized logging | ⬜ |
| 8 | [13-security-devsecops](./13-security-devsecops) | Secret scanning, dependency scanning, image scanning, SAST/DAST | ⬜ |
| 9 | [14-capstone-projects](./14-capstone-projects) | 3 end-to-end projects combining everything above | ⬜ |

> Tip: check off modules as you complete them by editing this table in your fork.

---

## Why this order?

- **Linux/Git first** — every tool downstream assumes comfort with the shell and version control.
- **CI/CD concepts before GitHub Actions** — understand *what* a pipeline does before learning a specific tool's syntax.
- **Docker before Kubernetes** — Kubernetes orchestrates containers; you need something to orchestrate.
- **Kubernetes before Terraform** — Terraform labs are more meaningful once you have real infrastructure (a cluster, an app) worth provisioning.
- **Cloud basics woven in after Terraform** — by then you have a concrete reason to learn cloud provider services instead of an abstract tour.
- **Observability and security last** — these are easiest to appreciate once you have a running system to monitor and secure.
- **Capstones at the end** — integrate everything into projects you can show in interviews or a portfolio.

---

## Capstone projects preview

By the end of this repo, you'll have built:

1. A full CI/CD pipeline (GitHub Actions) that builds, tests, and containerizes an application.
2. Automated deployment of that application to a Kubernetes cluster provisioned with Terraform.
3. A monitored, secured pipeline with alerting and vulnerability scanning built in.

See [`14-capstone-projects/README.md`](./14-capstone-projects/README.md) for full requirements and grading checklists.

---

## Contributing / using this as your own learning log

This repo is meant to be forked and personalized. Feel free to:
- Add your own notes inside each module's `README.md`
- Commit your lab work as you go (this becomes a great portfolio artifact)
- Open issues for yourself to track topics you want to revisit

---

## License

MIT — use, fork, and adapt freely.
