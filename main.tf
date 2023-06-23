resource "aws_instance" "ec2_amazonlinux" {

  ami             = var.ec2_ami
  instance_type   = var.ec2_instance_type
  key_name        = var.ec2_keyname
  subnet_id       = "subnet-00f94a76e1fd8e966"
  security_groups = [aws_security_group.ec2_amazonlinux_sg.id]
  user_data       = <<EOF
#!/bin/bash
yum install java-1.8.0-amazon-corretto-devel.x86_64 maven git -y
EOF

  tags = var.ec2_default_tags
}

