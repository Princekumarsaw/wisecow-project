# Wisecow - Docker and Kubernetes Deployment

## About
Wisecow is a simple web application that displays random fortune messages with ASCII cow graphics.

Original project: https://github.com/nyrahul/wisecow

This repository contains Docker and Kubernetes deployment configurations added as part of the AccuKnox DevOps Engineer Trainee practical assessment.

## Docker Setup

Build the Docker image:

docker build -t wisecow:1.0 .

Run the application:

docker run -d --name wisecow-test -p 4500:4499 wisecow:1.0

Test:

curl http://localhost:4500

## Kubernetes Deployment

Apply the Kubernetes manifests:

sudo k3s kubectl apply -f k8s/namespace.yaml
sudo k3s kubectl apply -f k8s/deployment.yaml
sudo k3s kubectl apply -f k8s/service.yaml

Check resources:

sudo k3s kubectl get pods -n wisecow
sudo k3s kubectl get svc -n wisecow

Access the application:

http://<EC2-PUBLIC-IP>:30499

## Project Structure

- Dockerfile: Builds the Docker image.
- wisecow.sh: Application startup script.
- k8s/namespace.yaml: Creates Kubernetes namespace.
- k8s/deployment.yaml: Deploys the application.
- k8s/service.yaml: Exposes the application through NodePort.

## Assessment Requirements

1. Docker containerization.
2. Kubernetes deployment.
3. Kubernetes Service exposure.
4. GitHub Actions workflow to build and push Docker images.
5. Automatic deployment to Kubernetes.
6. Secure TLS communication.

## Original Project

Source code: https://github.com/nyrahul/wisecow

The original LICENSE file and copyright notices are retained.
