#!/bin/bash
echo "Updating system and installing Docker + Docker Compose..."
sudo apt update && sudo apt install -y docker.io docker-compose

echo "Building and starting containers..."
sudo docker-compose -f deployment.yaml up --build -d

echo "Done! Check the running containers with: sudo docker ps"
echo "Access your services at:"
echo "  - NGINX: http://<your_server_ip>"
echo "  - Prometheus: http://<your_server_ip>:9090"
echo "  - Grafana: http://<your_server_ip>:3000 (default login: admin/admin)"