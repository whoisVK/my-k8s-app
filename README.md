# Project Name: My Kubernetes Web App

## Overview

This project demonstrates how to deploy a simple "Hello, World!" web application using a containerized environment managed with Kubernetes. It leverages a variety of DevOps tools including Docker, Minikube, Make, Git, Terraform, Curl, and Wget for an end-to-end development and deployment workflow.

## Prerequisites

- Docker
- Minikube
- kubectl
- Git
- Make
- Curl
- Wget

## Getting Started

### 1. Clone the Repository

Start by cloning this repository to your local machine:

```sh
git clone <repository-url>
cd <repository-name>
```

### 2. Build the Docker Image

Use the following command to build the Docker image for the web application:

```sh
Copy code
make build
This command uses the Dockerfile to create an image of the web application.
```

### 3. Run the Application Locally

To run the application locally using Docker:

```sh
Copy code
make run
This will start the web application container and make it accessible via http://localhost:8080.
```

### 4. Deploying to Kubernetes with Minikube

Ensure Minikube is started:

```sh
Copy code
minikube start
Deploy the application to Kubernetes using:
```

```sh
Copy code
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
Access the application through Minikube:
```

```sh
Copy code
minikube service my-k8s-app-service
```

#### Note: 

Ensure your Terraform configuration files (*.tf) are set up to define your infrastructure, particularly if deploying to the cloud.

### Testing the Application

After deployment, you can test the application using Curl or Wget:

```sh
Copy code
curl $(minikube service my-k8s-app-service --url)
```

Or:

```sh
Copy code
wget -qO- $(minikube service my-k8s-app-service --url)
```

### Contributing

Contributions are welcome! Please feel free to submit a pull request.
