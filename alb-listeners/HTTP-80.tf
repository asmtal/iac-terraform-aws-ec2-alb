resource "aws_alb_listener" "myapp-51054880c6b1945a14e07ff2d1f46990444b6e39_LST_PRTCL_myapp-51054880c6b1945a14e07ff2d1f46990444b6e39_LST_PRT" {
  port      = "myapp-51054880c6b1945a14e07ff2d1f46990444b6e39_LST_PRT"
  protocol  = "myapp-51054880c6b1945a14e07ff2d1f46990444b6e39_LST_PRTCL"
  load_balancer_arn = "${aws_alb.myapp-51054880c6b1945a14e07ff2d1f46990444b6e39.arn}"

  default_action {
    type              = "forward"
    target_group_arn  = "${aws_alb_target_group.myapp-51054880c6b1945a14e07ff2d1f46990444b6e39_TG.arn}"
  }
}
  output "lst-myapp-51054880c6b1945a14e07ff2d1f46990444b6e39-myapp-51054880c6b1945a14e07ff2d1f46990444b6e39_LST_PRTCL_myapp-51054880c6b1945a14e07ff2d1f46990444b6e39_LST_PRT-id" {
    value = "${aws_alb_listener.myapp-51054880c6b1945a14e07ff2d1f46990444b6e39_LST_PRTCL_myapp-51054880c6b1945a14e07ff2d1f46990444b6e39_LST_PRT.id}"
  }

  output "lst-myapp-51054880c6b1945a14e07ff2d1f46990444b6e39-myapp-51054880c6b1945a14e07ff2d1f46990444b6e39_LST_PRTCL_myapp-51054880c6b1945a14e07ff2d1f46990444b6e39_LST_PRT-arn" {
    value = "${aws_alb_listener.myapp-51054880c6b1945a14e07ff2d1f46990444b6e39_LST_PRTCL_myapp-51054880c6b1945a14e07ff2d1f46990444b6e39_LST_PRT.arn}"
  }
