resource "aws_lb_target_group" "rock-target-group" {
  name          = "rock-alb-tg"
  target_type   = "instance"
  port          = 80
  protocol      = "HTTP"
  vpc_id        = aws_vpc.rock-vpc.id
}
