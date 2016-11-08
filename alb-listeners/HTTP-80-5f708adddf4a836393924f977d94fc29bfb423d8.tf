resource "aws_alb_listener" "myapp-5f708adddf4a836393924f977d94fc29bfb423d8_LST_PRTCL_myapp-5f708adddf4a836393924f977d94fc29bfb423d8_LST_PRT" {
  port      = "myapp-5f708adddf4a836393924f977d94fc29bfb423d8_LST_PRT"
  protocol  = "myapp-5f708adddf4a836393924f977d94fc29bfb423d8_LST_PRTCL"
  load_balancer_arn = "${aws_alb.myapp-5f708adddf4a836393924f977d94fc29bfb423d8.arn}"

  default_action {
    type              = "forward"
    target_group_arn  = "${aws_alb_target_group.myapp-5f708adddf4a836393924f977d94fc29bfb423d8_TG.arn}"
  }
}
  output "lst-myapp-5f708adddf4a836393924f977d94fc29bfb423d8-myapp-5f708adddf4a836393924f977d94fc29bfb423d8_LST_PRTCL_myapp-5f708adddf4a836393924f977d94fc29bfb423d8_LST_PRT-id" {
    value = "${aws_alb_listener.myapp-5f708adddf4a836393924f977d94fc29bfb423d8_LST_PRTCL_myapp-5f708adddf4a836393924f977d94fc29bfb423d8_LST_PRT.id}"
  }

  output "lst-myapp-5f708adddf4a836393924f977d94fc29bfb423d8-myapp-5f708adddf4a836393924f977d94fc29bfb423d8_LST_PRTCL_myapp-5f708adddf4a836393924f977d94fc29bfb423d8_LST_PRT-arn" {
    value = "${aws_alb_listener.myapp-5f708adddf4a836393924f977d94fc29bfb423d8_LST_PRTCL_myapp-5f708adddf4a836393924f977d94fc29bfb423d8_LST_PRT.arn}"
  }
