resource "aws_lb" "app_lb" {
  name               = "app-lb"
  load_balancer_type = "application"

  subnets = [
    aws_subnet.public_a.id,
    aws_subnet.public_b.id
  ]

  security_groups = [aws_security_group.lb_sg.id]
}
