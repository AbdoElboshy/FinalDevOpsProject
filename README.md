# FinalDevOpsProject

## Project Overview

This project aims to build a robust, automated CI/CD pipeline for deploying cloud-native applications to a Kubernetes cluster on AWS. The implementation includes the creation of AWS infrastructure using **Terraform**, container orchestration with **EKS**, and the configuration of a CI/CD server using **Jenkins** hosted on an **EC2 instance**. The pipeline integrates **Nexus Repository** for artifact management, **Ansible** for automation, and **Helm** for Kubernetes package management.

By leveraging GitHub webhooks, the pipeline triggers automated builds, testing, and deployment on every code push. This hands-on experience equips you with essential DevOps skills and knowledge required for deploying reliable, scalable cloud-native applications.

- **Application GitHub Repository**: [Link to Application](https://github.com/naghamahmed/Sprints_W5-_Final)

## Architecture

The project architecture includes:
1. **Terraform** for provisioning AWS resources.
2. **EKS** for container orchestration.
3. **EC2 instance** for hosting Jenkins.
4. **Ansible** for automating Jenkins setup and Nexus configuration.
5. **Nginx Ingress** for managing external access to the Kubernetes services.
6. **AWS CloudWatch** for monitoring and alerting.

## Tools and Technologies

The following tools and technologies are used in this project:

- **AWS** (EKS, EC2, IAM, CloudWatch)
- **Terraform** for Infrastructure as Code (IaC)
- **Kubernetes** for container orchestration
- **Jenkins** for CI/CD pipeline automation
- **Ansible** for configuration management
- **Nexus Repository** for artifact management
- **Docker** for containerization
- **Nginx Ingress** for traffic routing

## Tasks

### 1. AWS Infrastructure Setup (Terraform)
- Create an EKS cluster with two nodes.
- Provision an EC2 instance for Jenkins.
- Set up AWS networking components (VPC, subnets, etc.).
- Configure CloudWatch alarms to monitor AWS resources.

### 2. Jenkins Configuration (Ansible)
- Install and configure Jenkins on the EC2 instance.
- Install required Jenkins plugins.
- Set up tools to access the EKS cluster.

### 3. Nexus Repository Setup (Terraform + Ansible)
- Deploy Nexus Repository OSS as a pod in a dedicated Kubernetes namespace.
- Configure Nexus repository settings (Docker hosted repository).
- Add AWS credentials and Kubernetes access.

### 4. Repository and Image Management
- Fork the application GitHub repository.
- Build Docker images for the application code.
- Create Docker Compose files for the application and database setup.

### 5. Kubernetes Deployment
- Install NGINX Ingress controller on the EKS cluster.
- Define Kubernetes manifests (Deployment, StatefulSet, Service, ConfigMap, Secret).
- Configure Ingress resources using NGINX.

### 6. Monitoring and Alerting
- Set up monitoring and alerting with AWS CloudWatch.

### 7. CI/CD Pipeline Configuration
- Configure Jenkins Pipeline as Code to trigger builds from GitHub on every code push.

## Expected Deliverables

Your GitHub repository should contain the following:

1. **Installation Guide** (`README.md` file with detailed steps)
2. **Scripts**:
   - Ansible scripts
   - Terraform scripts
   - Jenkins Pipeline files
   - Kubernetes manifests
