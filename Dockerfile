# ./Dockerfile
FROM amazonlinux:2.0.20221210.0
RUN sudo yum update -y
RUN sudo yum install -y httpd
RUN sudo systemctl start httpd
COPY index.html /var/www/html
EXPOSE 80
