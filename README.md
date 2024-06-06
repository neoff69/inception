<p align="center">
  <img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/ec559a9f6bfd399b82bb44393651661b08aaf7ba/icons/folder-markdown-open.svg" width="100" alt="project-logo">
</p>
<p align="center">
    <h1 align="center">INCEPTION</h1>
</p>
<p align="center">
    <em>Code dreams into seamless reality.</em>
</p>
<p align="center">
	<img src="https://img.shields.io/github/license/neoff69/inception?style=default&logo=opensourceinitiative&logoColor=white&color=0080ff" alt="license">
	<img src="https://img.shields.io/github/last-commit/neoff69/inception?style=default&logo=git&logoColor=white&color=0080ff" alt="last-commit">
	<img src="https://img.shields.io/github/languages/top/neoff69/inception?style=default&color=0080ff" alt="repo-top-language">
	<img src="https://img.shields.io/github/languages/count/neoff69/inception?style=default&color=0080ff" alt="repo-language-count">
<p>
<p align="center">
	<!-- default option, no dependency badges. -->
</p>

<br><!-- TABLE OF CONTENTS -->

<details>
  <summary>Table of Contents</summary><br>

-   [ Overview](#-overview)
-   [ Repository Structure](#-repository-structure)
-   [ Modules](#-modules)
-   [ Getting Started](#-getting-started)
    -   [ Installation](#-installation)
    -   [ Usage](#-usage)
    -   [ Tests](#-tests)
-   [ Project Roadmap](#-project-roadmap)
</details>
<hr>

## Overview

Inception is a Docker-based open-source project orchestrating MariaDB, Nginx, and WordPress containers for streamlined development environments. Managed by a robust Makefile, it optimizes database and web server settings for enhanced performance and security. Through predefined volumes and service configurations, Inception simplifies setup and maintenance, fostering seamless communication between services. The projects value lies in its ability to efficiently construct and maintain interconnected containerized environments, facilitating collaborative coding and testing processes.

---

## Repository Structure

```sh
└── inception/
    ├── Makefile
    └── srcs
        ├── docker-compose.yml
        └── requirements
```

---

## Modules

<details closed><summary>.</summary>

| File                                                                  | Summary                                                                                                                                                                                                                                                           |
| --------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Makefile](https://github.com/neoff69/inception/blob/master/Makefile) | Manages Docker deployment with predefined volumes and cleanup tasks. Orchestrates building, starting, stopping, and cleaning Docker containers using Docker Compose. Simplifies setting up and maintaining the development environment for the Inception project. |

</details>

<details closed><summary>srcs</summary>

| File                                                                                           | Summary                                                                                                                                                                                                                                                                                                                |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [docker-compose.yml](https://github.com/neoff69/inception/blob/master/srcs/docker-compose.yml) | Defines services and volume configurations for a Docker-based development environment. Establishes containers for MariaDB, Nginx, and Wordpress, connected via a common network. Facilitates seamless communication and data persistence across the services through defined environment variables and shared volumes. |

</details>

<details closed><summary>srcs.requirements.mariadb</summary>

| File                                                                                                | Summary                                                                                                                                                                                                             |
| --------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Dockerfile](https://github.com/neoff69/inception/blob/master/srcs/requirements/mariadb/Dockerfile) | Sets up and configures MariaDB in Docker container with specified database, user, and passwords. Upgrades Debian OS, installs MariaDB, copies configuration file, initializes database, and starts MariaDB service. |

</details>

<details closed><summary>srcs.requirements.mariadb.conf</summary>

| File                                                                                                           | Summary                                                                                                                                                                                                                                                                                                                                                      |
| -------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [50-server.cnf](https://github.com/neoff69/inception/blob/master/srcs/requirements/mariadb/conf/50-server.cnf) | Optimizes MariaDB server settings for improved performance, security, and compatibility. Sets configurations such as user, socket, port, query cache size, logging paths, character sets, and InnoDB defaults. Enhances TLS security and Unix socket authentication. Configurations are crucial for database operations within the repositorys architecture. |

</details>

<details closed><summary>srcs.requirements.wordpress</summary>

| File                                                                                                  | Summary                                                                                                                                             |
| ----------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Dockerfile](https://github.com/neoff69/inception/blob/master/srcs/requirements/wordpress/Dockerfile) | Installs necessary requirements for PHP.-Configures PHP-FPM.-Sets up WP-CLI for WordPress.-Executes auto-configuration script on container startup. |

</details>

<details closed><summary>srcs.requirements.wordpress.conf</summary>

| File                                                                                                   | Summary                                                                                                                                                                                                                                                                                                                                           |
| ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [www.conf](https://github.com/neoff69/inception/blob/master/srcs/requirements/wordpress/conf/www.conf) | This code file in srcs/requirements/wordpress/conf/www.conf defines configuration settings for a pool named www in the WordPress application. It specifies the Unix user and group for processes as www-data. The file sets up essential directives for the pool, ensuring proper process handling and security within the WordPress environment. |

</details>

<details closed><summary>srcs.requirements.nginx</summary>

| File                                                                                              | Summary                                                                                                                                                                               |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Dockerfile](https://github.com/neoff69/inception/blob/master/srcs/requirements/nginx/Dockerfile) | Creates a custom Nginx Docker image with SSL configuration for the inception project. Configures SSL certificate, copies Nginx config, and exposes port 443 for secure communication. |

</details>

<details closed><summary>srcs.requirements.nginx.conf</summary>

| File                                                                                                   | Summary                                                                                                                                                                                                                                                        |
| ------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [nginx.conf](https://github.com/neoff69/inception/blob/master/srcs/requirements/nginx/conf/nginx.conf) | Defines NGINX configuration for SSL, PHP support, and root location in the parent repositorys architecture. Facilitates running NGINX in the foreground with auto worker processes, enabling secure server setup for vgonnot.42.fr with WordPress integration. |

</details>

---

## Getting Started

**System Requirements:**

-   **None**: `version x.y.z`

### Installation

<h4>From <code>source</code></h4>

> 1. Clone the inception repository:
>
> ```console
> $ git clone https://github.com/neoff69/inception
> ```
>
> 2. Change to the project directory:
>
> ```console
> $ cd inception
> ```

### Usage

<h4>From <code>source</code></h4>

> Run inception using the command below:
>
> ```console
> $ > make
> ```

---
