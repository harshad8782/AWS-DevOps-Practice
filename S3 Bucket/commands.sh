# s3/commands.sh
#!/bin/bash
aws s3 mb s3://devops-demo-harshad --region eu-north-1
aws s3 cp devopsdemo-0.0.1-SNAPSHOT.jar s3://devops-demo-harshad/
aws s3 ls s3://devops-demo-harshad/