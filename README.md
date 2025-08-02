# ⚙️ Seed Project – FrankenPHP + Nuxt + Docker

 
![CI](https://github.com/dunglas/symfony-docker/workflows/CI/badge.svg)


### 🧱 Prérequis
- FrankenPHP (Docker)

- Node.js v22.9.0

- Symfony v7

- PHP 8.4+

### 🚀 Description
This project provides a complete development environment based on FrankenPHP, Symfony 7, and Nuxt 3, ready to use with Docker.

> It enables you to quickly set up a modern PHP + Nuxt architecture, optimized for performance and seamless API integration.

## Getting Started

1. If not already done, [install Docker Compose](https://docs.docker.com/compose/install/) (v2.10+)
2. Run `make build` to build fresh images
3. Run `make api-wait` to set up and start a fresh Symfony project
4. Open `https://localhost:443` in your favorite web browser and [accept the auto-generated TLS certificate](https://stackoverflow.com/a/15076602/1352334)
5. Run `make remove` to stop the Docker containers.

---

### Guide [FrankenPHP](https://frankenphp.dev)

#### Docs

1. [Options available](docs/options.md)
2. [Using Symfony Docker with an existing project](docs/existing-project.md)
3. [Support for extra services](docs/extra-services.md)
4. [Deploying in production](docs/production.md)
5. [Debugging with Xdebug](docs/xdebug.md)
6. [TLS Certificates](docs/tls.md)
7. [Using MySQL instead of PostgreSQL](docs/mysql.md)
8. [Using Alpine Linux instead of Debian](docs/alpine.md)
9. [Using a Makefile](docs/makefile.md)
10. [Updating the template](docs/updating.md)
11. [Troubleshooting](docs/troubleshooting.md)

### Credits

Created by [Kévin Dunglas](https://dunglas.dev), co-maintained by [Maxime Helias](https://twitter.com/maxhelias) and sponsored by [Les-Tilleuls.coop](https://les-tilleuls.coop).

---

## Git

In this case, you also need to commit and push the submodule reference, and make sure the api repository is publicly accessible or properly configured with credentials.

Use the following commands to initialize it:

````bash
    git submodule update --init --recursive
    git rm --cached api
    rm -rf .git/modules/api
````

Next commit and push your code :

````bash
    git add api
    git commit -m "Ajout réel du dossier api au dépôt"
    git push
````