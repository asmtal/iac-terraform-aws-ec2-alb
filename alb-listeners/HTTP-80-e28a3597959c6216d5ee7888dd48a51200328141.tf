resource "aws_alb_listener" "myapp-e28a3597959c6216d5ee7888dd48a51200328141_LST_PRTCL_myapp-e28a3597959c6216d5ee7888dd48a51200328141_LST_PRT" {
  port      = "myapp-e28a3597959c6216d5ee7888dd48a51200328141_LST_PRT"
  protocol  = "myapp-e28a3597959c6216d5ee7888dd48a51200328141_LST_PRTCL"
  load_balancer_arn = "${aws_alb.myapp-e28a3597959c6216d5ee7888dd48a51200328141.arn}"

  default_action {
    type              = "forward"
    target_group_arn  = "${aws_alb_target_group.myapp-e28a3597959c6216d5ee7888dd48a51200328141_TG.arn}"
  }
}
  output "lst-myapp-e28a3597959c6216d5ee7888dd48a51200328141-myapp-e28a3597959c6216d5ee7888dd48a51200328141_LST_PRTCL_myapp-e28a3597959c6216d5ee7888dd48a51200328141_LST_PRT-id" {
    value = "${aws_alb_listener.myapp-e28a3597959c6216d5ee7888dd48a51200328141_LST_PRTCL_myapp-e28a3597959c6216d5ee7888dd48a51200328141_LST_PRT.id}"
  }

  output "lst-myapp-e28a3597959c6216d5ee7888dd48a51200328141-myapp-e28a3597959c6216d5ee7888dd48a51200328141_LST_PRTCL_myapp-e28a3597959c6216d5ee7888dd48a51200328141_LST_PRT-arn" {
    value = "${aws_alb_listener.myapp-e28a3597959c6216d5ee7888dd48a51200328141_LST_PRTCL_myapp-e28a3597959c6216d5ee7888dd48a51200328141_LST_PRT.arn}"
  }
