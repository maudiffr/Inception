# Inception
<br>
<p align="center">
    <img src=https://upload.wikimedia.org/wikipedia/commons/8/89/Docker_Logo.svg alt="Docker Logo" width="350">
</p>

<br>

### Skills

- Containerization with **Docker** and **docker-compose**
- Writing custom **Dockerfiles** (Debian/Alpine base images)
- Secure **reverse proxy** setup with **NGINX** and **TLSv1.2/TLSv1.3 only**
- **MariaDB** deployment and user management
- **WordPress** with PHP-FPM configuration
- **Networking** between isolated containers
- Environment variables
- Infrastructure automation via **Makefile**

<br>

## About

**Inception** is a system administration and DevOps project at 42.

The goal is to **build a small, fully containerized infrastructure** from scratch, using Docker and docker-compose, without relying on prebuilt service images.

Key aspects:
- Each service runs in its **own container**, built from a **custom Dockerfile**
- Only base images (`Debian` or `Alpine`) are allowed.
- Containers must **restart automatically** in case of failure.
- No hacky patches (`tail -f`, infinite loops, `sleep infinity`, etc.).
- Services communicate through a dedicated **docker network**.
- Sensitive data is stored using **environment variables**.

The infrastructure includes **WordPress running with PHP-FPM**, a **MariaDB database**, and **NGINX** as a **secure reverse proxy**.

This project enforces best practices for Docker images and secure service deployment.

<br>

## Usage

**Prerequisites**
- Docker
- Docker Compose

**Build and start the infrastructure**
```bash
make
```
Once started, you can access the WordPress site at:
`https://localhost`.

A sample `.env` file is provided for demonstration purposes only. Normally, this file is **not included** to keep sensitive information secure.
