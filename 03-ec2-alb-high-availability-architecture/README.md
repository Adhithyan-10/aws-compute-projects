# Highly Available Web Architecture using AWS Application Load Balancer and EC2

## Project Overview

This project demonstrates how to design a **highly available web application architecture** using Amazon EC2 and an AWS Application Load Balancer (ALB).

The Application Load Balancer distributes incoming traffic across multiple EC2 instances deployed in different Availability Zones. This design ensures high availability, improved fault tolerance, and scalable web application hosting.

This architecture closely reflects **real-world production deployments used in enterprise cloud environments**.

---

## Full Project Repository

Complete implementation including documentation, Architecture diagram, screenshots, and demo video:

https://github.com/Adhithyan-10/aws-application-load-balancer-ec2

---

## Architecture

```
Internet User
      ↓
Application Load Balancer
      ↓
Target Group
      ↓
EC2 Instance 1 (AZ-1)
EC2 Instance 2 (AZ-2)
```

---

## AWS Services Used

- Amazon EC2
- AWS Application Load Balancer
- Target Groups
- Amazon VPC
- Security Groups

---

## Architecture Explanation

### Internet User

Users send HTTP requests to the application through the internet.

### Application Load Balancer

The Application Load Balancer acts as a **single entry point** for incoming traffic. It distributes requests across multiple EC2 instances.

Key responsibilities include:

- intelligent traffic distribution
- continuous health monitoring
- routing requests only to healthy instances

### Target Group

Target groups manage the registered EC2 instances that receive traffic from the load balancer.

Health checks ensure that only **healthy instances** receive user requests.

### EC2 Instances

Multiple EC2 instances host the web application. Each instance serves incoming requests independently.

If one instance fails, the load balancer automatically redirects traffic to healthy instances.

---

## Implementation Steps

### 1. Launch EC2 Instances

Create multiple EC2 instances in different Availability Zones.

### 2. Install Web Server

Install and configure Apache web server on each EC2 instance.

### 3. Configure Web Pages

Deploy simple web pages on each instance with different responses to identify which server handled the request.

### 4. Create Target Group

Create a target group and register EC2 instances as targets.

### 5. Configure Application Load Balancer

Create an internet-facing Application Load Balancer and associate it with the target group.

### 6. Configure Security Groups

Allow HTTP traffic so users can access the application through the load balancer.

### 7. Verify Traffic Distribution

Access the application using the **ALB DNS name** and observe responses from different EC2 instances.

---

## Key Benefits of This Architecture

### High Availability

The application remains accessible even if one EC2 instance becomes unavailable.

### Fault Tolerance

Traffic is routed only to healthy instances using ALB health checks.

### Scalable Design

The architecture can easily integrate with **Auto Scaling Groups** for automatic scaling.

### Production Ready

This design closely follows industry standards for building resilient cloud applications.

---

## Deployment Result

The web application is successfully deployed behind an Application Load Balancer. Incoming traffic is distributed across multiple EC2 instances deployed in different Availability Zones, ensuring improved reliability and availability.

---

## Screenshots and Demo

All implementation screenshots, architecture diagrams, and demo video are available in the project repository linked above.
