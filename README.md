# ProjectAWS

This repository hosts the implementation of a Three-Tier Web App using ReactJS, NodeJS, and MongoDB, deployed on AWS EKS

# Application Code
The Application-Code directory contains the source code for the Three-Tier Web Application and dockerfiles. 

# Jenkins Pipeline Code
In this directory, you'll find Jenkins pipeline scripts. These scripts automate the CI/CD process, ensuring smooth integration and deployment  application.

# Jenkins Server Infra

This directory have the terraform scripts for setting up the Jenkins Server on AWS. and one script to install some dependencies like aws cli, terraform, etc

# Kubernetes 
The Kubernetes directory holds Kubernetes manifests for deploying your application on AWS EKS. 

# eks
This directory have the terraform scripts for setting up EKS on AWS

# S3 backend

This Terraform module provisions the following resources to create S3 backend to terrafro tfstate file:

- IAM User: Creates a user in AWS IAM with administrative privileges.
- S3 Bucket: Sets up an S3 bucket to store Terraform state files, with versioning enabled and a bucket policy attached.
- DynamoDB Table: Creates a DynamoDB table for state locking and consistency checks when using Terraform.