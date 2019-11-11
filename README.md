### Description

The assessment is done using the following tools

1. Packer
2. Terraform
3. aws
4. jenkins
5. Prometheus
6. Grafana
7. Docker
8. AWS Cloud Watch
9. Slack

The images are build using packer. The essence of using packer is to be able to scale out and scale in. Packer is used to build the AMI for Jenkins Master and Jenkins Slaves. Once the jenkins reaches a threadhold of 80%, another jenkins slave instance will spin off using ASG. The git repo is configured on jenkins and the jenkins pipeline as well.

A trigger will be sent to slack channel if any build fails.