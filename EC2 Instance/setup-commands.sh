# ec2/setup-commands.sh
#!/bin/bash
chmod 400 "devops-key.pem"
ssh -i "devops-key.pem" ec2-user@YOUR-EC2-IP
sudo yum update -y
sudo yum install docker -y
sudo systemctl start docker
sudo usermod -aG docker ec2-user
docker pull harshad8782/devops-demo:latest
docker run -d --name devops-app -p 8080:8080 --restart unless-stopped harshad8782/devops-demo:latest