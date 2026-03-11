# Static Website Hosting using Amazon S3 and CloudFront

## Project Overview

This project demonstrates how to host a **static website using Amazon S3** and deliver it globally using **Amazon CloudFront CDN with HTTPS support**.

The architecture follows a **serverless hosting model**, eliminating the need for EC2 instances or backend servers while ensuring fast, secure, and scalable global content delivery.

This setup is commonly used for:

- portfolio websites
- landing pages
- documentation sites
- static web applications

---

## Full Project Repository

Complete implementation and deployment details are available in the project repository:

https://github.com/Adhithyan-10/aws-project2-s3-cloudfront-deployment

---

## Architecture

```
User
 ↓
CloudFront CDN (HTTPS + Edge Caching)
 ↓
Amazon S3 Bucket (Static Website Hosting)
```

---

## AWS Services Used

- Amazon S3
- Amazon CloudFront
- AWS IAM
- S3 Bucket Policy

---

## Architecture Explanation

### User
End users access the website globally through the internet.

### CloudFront
CloudFront acts as a **Content Delivery Network (CDN)** that caches content at global edge locations and delivers the website with **low latency and HTTPS security**.

### S3 Bucket
Amazon S3 stores the static website files such as:

- HTML
- CSS
- images
- JavaScript

The bucket is configured with **static website hosting enabled**.

---

## Implementation Steps

### 1. Create S3 Bucket
Create an S3 bucket to store website files.

### 2. Upload Website Files
Upload static website files such as:

- `index.html`
- `style.css`
- images

### 3. Enable Static Website Hosting
Enable **static website hosting** in the S3 bucket configuration.

Specify:

```
index.html
```

as the index document.

### 4. Configure Bucket Policy
Add a **bucket policy** to allow public read access to the website objects.

### 5. Create CloudFront Distribution
Create a **CloudFront distribution** and configure the S3 bucket as the origin.

### 6. Enforce HTTPS
Configure the **viewer protocol policy** to:

```
Redirect HTTP to HTTPS
```

### 7. Test Deployment
Access the website using the **CloudFront domain URL** and verify global access.

---

## Key Benefits

### Serverless Hosting
No EC2 instances required, eliminating server management overhead.

### Global CDN
CloudFront delivers content through worldwide edge locations, improving performance.

### Secure HTTPS Delivery
All traffic is encrypted using HTTPS.

### Free Tier Friendly
This architecture works efficiently within **AWS Free Tier limits**.

### Highly Scalable
The architecture automatically handles traffic spikes.

### Low Maintenance
Minimal operational overhead compared to traditional server-based hosting.

---

## Deployment Result

The website is successfully deployed and globally accessible through **CloudFront with HTTPS security**.

Users worldwide can access the website with **minimal latency** thanks to CloudFront’s edge locations.

---

## Screenshots

All implementation screenshots and deployment visuals are included in the **project documentation PDF and repository** linked above.
