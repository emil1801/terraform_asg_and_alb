resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.project.arn
  port              = "80"
  protocol          = "HTTP"
  

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.project.arn
  }
}