#!bin/bash
yum install httpd -y

systemctl start httpd
systemctl enable httpd

echo "<h1> My Application </h1>" > var/www/html/indix.html
