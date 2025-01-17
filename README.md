## Overview

This project involves deploying a web application with a Postgres database, a Django application, an NGINX reverse proxy, and monitoring tools (Prometheus and Grafana). The deployment uses Docker and Docker Compose.


## Prerequisites

1. **System Requirements**:
   - Linux-based OS (Ubuntu/Debian recommended).

2. **Installed Tools**:
   - Docker (>= 20.x).
   - Docker Compose (>= 2.x).

3. **Required Files**:
   - `docker-compose.yaml`
   - `deployment.yaml`
   - `start.yaml`


## Installing the Package

1. Clone the repository:

   #bash
   git clone <https://github.com/Nobodyknwme/Testtask>
   cd <Testtask>

2. Install the required packages:
#bash
sudo apt update && sudo apt install -y docker.io docker-compose

## Deploying the System

A. **Using script setup.sh (Recommended for Automation)**
   #bash
   cd <Testtask>
   chmod +x setup.sh
   ./setup.sh

B. **Manual Deployment**
1. **Build and Start the Containers**:

   #bash
   sudo docker-compose -f deployment.yaml up --build

2. **Verify Running Containers**:
   Run the following command to ensure all services are running:

   #bash
   sudo docker ps

   Expected output:
   - Postgres database container (Testtask-db-1)
   - Django application container (Testtask-django-1)
   - NGINX proxy container (Testtask-nginx-1)
   - Prometheus monitoring container (prometheus)
   - Grafana visualization container (grafana)

3. **Access the Services**:
   - NGINX reverse proxy: `http://<your_server_ip>`
   - Prometheus: `http://<your_server_ip>:9090`
   - Grafana: `http://<your_server_ip>:3000` (default username/password: `admin/admin`)


## Validating the Solution

### 1. Application Availability

- Open the NGINX URL (`http://<your_server_ip>`).
- Verify the Django application is accessible and functioning as expected.

### 2. Grafana Dashboards

- Log in to Grafana and navigate to the "Dashboards" section.
- Verify the pre-provisioned dashboard is loading and displaying data collected by Prometheus.


## Notes

- For advanced debugging, check container logs:

  #bash
  sudo docker logs <container_name>