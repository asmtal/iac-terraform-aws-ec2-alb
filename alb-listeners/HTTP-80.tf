resource "aws_alb_listener" "myapp-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c_LST_PRTCL_myapp-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c_LST_PRT" {
  port      = "myapp-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c_LST_PRT"
  protocol  = "myapp-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c_LST_PRTCL"
  load_balancer_arn = "${aws_alb.myapp-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c.arn}"

  default_action {
    type              = "forward"
    target_group_arn  = "${aws_alb_target_group.myapp-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c_TG.arn}"
  }
}
  output "lst-myapp-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c-myapp-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c_LST_PRTCL_myapp-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c_LST_PRT-id" {
    value = "${aws_alb_listener.myapp-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c_LST_PRTCL_myapp-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c_LST_PRT.id}"
  }

  output "lst-myapp-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c-myapp-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c_LST_PRTCL_myapp-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c_LST_PRT-arn" {
    value = "${aws_alb_listener.myapp-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c_LST_PRTCL_myapp-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c_LST_PRT.arn}"
  }
