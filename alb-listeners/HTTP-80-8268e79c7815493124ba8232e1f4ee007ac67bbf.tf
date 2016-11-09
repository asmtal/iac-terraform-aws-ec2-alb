resource "aws_alb_listener" "_LST_PRTCL__LST_PRT" {
  port      = "_LST_PRT"
  protocol  = "_LST_PRTCL"
  load_balancer_arn = "${aws_alb..arn}"

  default_action {
    type              = "forward"
    target_group_arn  = "${aws_alb_target_group._TG.arn}"
  }
}
  output "lst--_LST_PRTCL__LST_PRT-id" {
    value = "${aws_alb_listener._LST_PRTCL__LST_PRT.id}"
  }

  output "lst--_LST_PRTCL__LST_PRT-arn" {
    value = "${aws_alb_listener._LST_PRTCL__LST_PRT.arn}"
  }
