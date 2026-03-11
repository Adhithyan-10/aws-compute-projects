#!/bin/bash

yum update -y
yum install -y httpd

systemctl start httpd
systemctl enable httpd

INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)
AZ=$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)
HOSTNAME=$(hostname)

cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
<title>Auto Scaling EC2 Response</title>
</head>

<body style="font-family: Arial; padding: 20px;">
<h1>Response from Auto Scaling EC2 Instance</h1>
<p><b>Instance ID:</b> $INSTANCE_ID</p>
<p><b>Availability Zone:</b> $AZ</p>
<p><b>Hostname:</b> $HOSTNAME</p>
</body>
</html>
EOF
