resource "aws_alb_listener" "myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94_LST_PRTCL_myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94_LST_PRT" {
  port      = "myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94_LST_PRT"
  protocol  = "myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94_LST_PRTCL"
  load_balancer_arn = "${aws_alb.myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94.arn}"

  default_action {
    type              = "forward"
    target_group_arn  = "${aws_alb_target_group.myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94_TG.arn}"
  }
}
  output "lst-myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94-myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94_LST_PRTCL_myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94_LST_PRT-id" {
    value = "${aws_alb_listener.myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94_LST_PRTCL_myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94_LST_PRT.id}"
  }

  output "lst-myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94-myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94_LST_PRTCL_myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94_LST_PRT-arn" {
    value = "${aws_alb_listener.myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94_LST_PRTCL_myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94_LST_PRT.arn}"
  }
