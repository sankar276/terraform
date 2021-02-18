locals {
  env_tag = {
    Environment = terraform.workspace
  }
  tags = merge(var.ec2_tags, local.env_tag)
}

resource "aws_instance" "web" {
  count                  = 2
  ami                    = var.ec2_amis[var.region]
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.private.*.id[count.index]
  tags                   = var.ec2_tags
  user_data              = file("scripts/apache.sh")
  iam_instance_profile   = aws_iam_instance_profile.ec2_profile.name
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
}
