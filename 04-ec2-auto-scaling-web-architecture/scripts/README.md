# Automation Scripts

This folder contains automation scripts used during the deployment of the **Auto Scaling EC2 Architecture**.

## User Data Script

The Auto Scaling Group uses a **Launch Template** that includes a User Data script.

This script runs automatically when a new EC2 instance is launched.

The script performs the following actions:

- Updates system packages
- Installs Apache web server
- Starts and enables the Apache service
- Retrieves instance metadata
- Generates a dynamic webpage showing instance information

This automation ensures that every EC2 instance launched by the Auto Scaling Group is automatically configured and ready to serve web requests.

## Purpose

The script helps demonstrate how cloud infrastructure can be automatically configured when instances are created.

This approach is commonly used in production environments to automate server provisioning.
