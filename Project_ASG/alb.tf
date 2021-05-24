
resource "aws_lb" "project" {
  name               = "project"
  internal           = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.asg_sec_group.id]
  subnets = [aws_subnet.public_subnet1.id, aws_subnet.public_subnet2.id]
}


