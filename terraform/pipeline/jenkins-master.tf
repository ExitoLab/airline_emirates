resource "aws_key_pair" "admin_key" {
  key_name   = "admin_key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC9S0KkhvmKM6JRW+anth8XubNuvH18s8TopAvmuB6+5nbTIosstuqR9AgCFCiTYBI7u4Zi0rrmDVjVG3cQIK4SsDLxskuOX3Xe7v6RW566hXdr8jikPM2rkZL6S280/Z9/49tDKVWgXMjatFD2kaRw23s5Ay3+FK56qzR8NOMf9/OOvxzmJ3CfEl6H4lrnZWEpGmAVyDpG/MSSG5VhYdd+Is2nbufQB4kYLoo5CPI6+D5SkVczjjFJ22SI8Us8wo4nD80bZ6A73ihvJXLU9wFMadgIjz9OqGzWiNl7PhsGoRWOH8aqx5xs8ROQzDlEFm0olf1qLtlJ/aEXm78zNko9 adetokunbo.ige@interswitchng@ISW-TECH-LK"
}
resource "aws_instance" "jenkins_master" {
  ami                    = "${data.aws_ami.jenkins-master.id}"
  instance_type          = "${var.jenkins_master_instance_type}"
  key_name               = "${var.key_name}"
  vpc_security_group_ids = ["${aws_security_group.jenkins_master_sg.id}"]
  #subnet_id              = "${element(var.vpc_private_subnets, 0)}"
  subnet_id              = "${var.vpc_private_subnets}"

  root_block_device {
    volume_type           = "gp2"
    volume_size           = 30
    delete_on_termination = false
  }

  tags = {
    Name   = "jenkins_master"
    Author = "Ige Adetokunbo Temitayo"
    Tool   = "Terraform"
  }
}