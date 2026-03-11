# Architecture Diagram

This folder contains the architecture diagram for the **Auto Scaling Web Architecture using EC2 and Application Load Balancer** project.

## Architecture Overview

The architecture demonstrates how AWS services work together to build a scalable and highly available web application infrastructure.

Incoming traffic from users is first received by an **Application Load Balancer**, which distributes requests across multiple EC2 instances.

These EC2 instances are managed by an **Auto Scaling Group**, which automatically launches or terminates instances depending on traffic demand.

## Key Components

**Internet User**

Users access the application through the internet.

**Application Load Balancer**

The Application Load Balancer acts as the entry point to the application and distributes incoming traffic across multiple EC2 instances.

**Target Group**

The target group registers EC2 instances and routes requests only to healthy instances based on health checks.

**Auto Scaling Group**

The Auto Scaling Group automatically manages the number of EC2 instances. It ensures that the desired number of instances are always running.

**Launch Template**

The launch template defines the configuration used when Auto Scaling launches new EC2 instances.

**EC2 Instances**

These instances host the web application and respond to incoming requests.

## Architecture Benefits

- High availability through multiple EC2 instances
- Automatic scaling based on demand
- Self-healing infrastructure
- Improved fault tolerance
- Efficient resource utilization

Refer to the architecture diagram below for the complete system design.
