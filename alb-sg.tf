resource "aws_security_group" "alb_sg" {
  name        = "alb_sg"
  description = "Allow inbound traffic for web applicaiton on ec2"
  vpc_id      = aws_vpc.mydemodemo.id

  ingress {
    description = "alb web port"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "alb_sg"
  }
}
