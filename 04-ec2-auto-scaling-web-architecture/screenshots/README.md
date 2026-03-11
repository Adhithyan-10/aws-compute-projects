# Project Implementation Screenshots

This folder contains the screenshots captured during the implementation of the **Auto Scaling Web Architecture using EC2 and Application Load Balancer**.

The screenshots demonstrate the step-by-step configuration and verification of AWS resources used in the project.

---

## Screenshot Descriptions

### 01 — Launch Template

**File:** `01-launch-template.png.png`

This screenshot shows the **Launch Template configuration** used by the Auto Scaling Group.  
The template defines the AMI, instance type, security group, key pair, and user data script used to automatically launch EC2 instances.

---

### 02 — User Data Script

**File:** `02-user-data.png.png`

This screenshot displays the **User Data script** used during EC2 instance launch.  
The script installs the Apache web server and dynamically generates a webpage showing instance metadata such as Instance ID and Availability Zone.

---

### 03 — Auto Scaling Group Configuration

**File:** `03-asg-config.png.png`

This screenshot shows the **Auto Scaling Group configuration**, including desired capacity, minimum instances, and maximum instances.

The Auto Scaling Group ensures the application always maintains the required number of EC2 instances.

---

### 04 — Auto Scaling Activity

**File:** `04-asg-activity.png.png`

This screenshot displays the **Auto Scaling activity history**.

It shows events where Auto Scaling automatically launches or terminates EC2 instances in response to health checks or scaling events.

---

### 05 — EC2 Instances

**File:** `05-ec2-instances.png.png`

This screenshot shows the EC2 instances currently running and managed by the **Auto Scaling Group**.

Multiple instances are launched across Availability Zones to ensure high availability.

---

### 06 — Application Load Balancer

**File:** `06-alb-active.png.png`

This screenshot shows the **Application Load Balancer** configured for the architecture.

The load balancer receives incoming traffic and distributes requests across the EC2 instances.

---

### 07 — Target Group Health Status

**File:** `07-target-group-healthy.png.png`

This screenshot displays the **Target Group configuration and health status**.

The EC2 instances are registered in the target group and marked as **healthy**, allowing them to receive traffic from the load balancer.

---

### 08 — Load Balancer Response (Instance 1)

**File:** `08-alb-output1.png.png`

This screenshot shows the response from the Application Load Balancer where the request is served by one EC2 instance.

The webpage displays instance metadata including the Instance ID and Availability Zone.

---

### 09 — Load Balancer Response (Instance 2)

**File:** `08-alb-output2.png.png`

This screenshot shows the response from another EC2 instance.

Refreshing the load balancer URL routes traffic to different instances, demonstrating load balancing.

---

### 10 — Apache Webpage Output

**File:** `08-apache-webpage-output.png.png`

This screenshot shows the webpage served directly from the Apache web server running on the EC2 instance.

The page dynamically displays instance metadata confirming that the server configuration using the User Data script was successful.

---

## Summary

These screenshots verify that:

- Auto Scaling successfully launches and replaces EC2 instances
- Application Load Balancer distributes traffic across instances
- Target group health checks ensure only healthy instances receive traffic
- The Apache web server runs successfully on all EC2 instances
