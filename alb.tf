# ALB (Public to Web)
resource "aws_lb" "alb_public" {
  name               = "public-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_public_sg.id]
  subnets            = var.public_subnet_ids

  enable_deletion_protection = false
}

# ALB Security Group
resource "aws_security_group" "alb_public_sg" {
    name    = "alb-public-sg"
    

    ingress {
      from_port     = 80
      to_port       = 80
      protocol      = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
      from_port     = 0
      to_port       = 0
      protocol      = "-1"
      cidr_blocks    = ["0.0.0.0/0"]
    }
}

# ALB Target Group for Web Servers
resource "aws_lb_target_group" "web_target_group" {
  name      = "web-target-group"
  port      = 80
  protocol  = "HTTP"

  health_check {
    path                = "/"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }
}

# ALB Listener
resource "aws_lb_listener" "alb_public_listener" {
  load_balancer_arn = aws_lb.alb_public.arn
  port      = 80
  protocol  = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.web_target_group.arn
  }
}