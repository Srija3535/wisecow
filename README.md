Wisecow Application

A simple Bash-based web app that serves random quotes using fortune and cowsay.
This project demonstrates containerization, Kubernetes deployment, and CI/CD automation.

Features
1.Dockerized application
2.Deployed on Kubernetes (Minikube)
3.Automated CI/CD with GitHub Actions
4.TLS-ready setup

Tech Stack - Docker • Kubernetes • GitHub Actions • Bash

How to Run for your use : 
# Clone the repo
git clone https://github.com/username/wisecow.git
cd wisecow
# Build Docker image
docker build -t wisecow-app .
# Run container
docker run -p 4499:4499 wisecow-app
Then open http://localhost:4499 in your browser.

Kubernetes Deployment:
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

CI/CD workflow:
Every push to the main branch:
 1.Builds and pushes Docker image
 2.Deploys automatically to Minikube
