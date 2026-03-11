# EC2 Web Application Hosting with S3 Distributed Asset Storage

## Project Overview

This project demonstrates the deployment of a web application using **Amazon EC2 for compute** and **Amazon S3 for distributed static asset storage**.

The application runs on an EC2 instance using a Node.js server, while static assets such as images are stored across multiple S3 buckets and accessed through public object URLs.

The project also demonstrates secure instance access using **AWS Systems Manager Session Manager**, eliminating the need for SSH key-pair login.

---

## Full Project Repository

Complete implementation:

https://github.com/Adhithyan-10/aws-ec2-s3-static-website-deployment

---

## Architecture

```
User
 ↓
EC2 Instance (Node.js Web Server)
 ↓
S3 Bucket 1 (Image Storage)
 ↓
S3 Bucket 2 (Image Storage)
 ↓
S3 Bucket 3 (Image Storage)
```

---

## AWS Services Used

- Amazon EC2
- Amazon S3
- AWS Systems Manager (SSM)
- IAM Roles
- Security Groups

---

## Architecture Explanation

### User
End users access the web application through the public IP address of the EC2 instance.

### EC2 Instance
The EC2 instance hosts the Node.js web application and processes incoming user requests.

### Amazon S3
Static assets such as images are stored in multiple S3 buckets and accessed through public object URLs.

### AWS Systems Manager
SSM Session Manager allows secure access to the EC2 instance without using SSH key pairs.

---

## Implementation Steps

### 1. Launch EC2 Instance
Create an EC2 instance configured with appropriate security group rules.

### 2. Configure Security Group
Allow inbound HTTP traffic so users can access the web application.

### 3. Install Node.js Application
Deploy the Node.js web application on the EC2 instance.

### 4. Configure Application Listener
Initially, the Node.js server was listening on:

```
127.0.0.1
```

This prevented external access.

The issue was resolved by updating the server configuration to listen on:

```
0.0.0.0
```

which allows external connections. :contentReference[oaicite:1]{index=1}

### 5. Configure S3 Buckets
Create multiple S3 buckets to store static assets such as images.

### 6. Upload Static Files
Upload images and assets to the S3 buckets.

### 7. Configure Bucket Policies
Disable block public access and apply bucket policies allowing:

```
GetObject
```

permissions for public access.

### 8. Integrate S3 Assets
Update the web application to load images using S3 object URLs.

### 9. Test Deployment
Access the web application using the EC2 public IP address and verify that assets load from S3.

---

## Key Learnings

- Deploying web applications on Amazon EC2
- Using Amazon S3 for static asset storage
- Secure instance access using AWS Systems Manager
- Configuring bucket policies and public object access
- Troubleshooting networking issues in cloud environments
- Understanding differences between local and public network access

---

## Deployment Result

The web application is successfully hosted on an EC2 instance and is publicly accessible through the EC2 public IP address.

Static assets such as images are retrieved from Amazon S3 buckets, demonstrating separation between compute and storage layers. :contentReference[oaicite:2]{index=2}

---

## Screenshots

All deployment screenshots and configuration steps are included in the project documentation and repository linked above.
