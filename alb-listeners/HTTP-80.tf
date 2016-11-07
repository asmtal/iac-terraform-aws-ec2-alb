resource "aws_alb_listener" "myapp-ddbdb0f3edda707128cd968730e911cf47eeabcc_LST_PRTCL_myapp-ddbdb0f3edda707128cd968730e911cf47eeabcc_LST_PRT" {
  port      = "myapp-ddbdb0f3edda707128cd968730e911cf47eeabcc_LST_PRT"
  protocol  = "myapp-ddbdb0f3edda707128cd968730e911cf47eeabcc_LST_PRTCL"
  load_balancer_arn = "${aws_alb.myapp-ddbdb0f3edda707128cd968730e911cf47eeabcc.arn}"

  default_action {
    type              = "forward"
    target_group_arn  = "${aws_alb_target_group.myapp-ddbdb0f3edda707128cd968730e911cf47eeabcc_TG.arn}"
  }
}
  output "lst-myapp-ddbdb0f3edda707128cd968730e911cf47eeabcc-myapp-ddbdb0f3edda707128cd968730e911cf47eeabcc_LST_PRTCL_myapp-ddbdb0f3edda707128cd968730e911cf47eeabcc_LST_PRT-id" {
    value = "${aws_alb_listener.myapp-ddbdb0f3edda707128cd968730e911cf47eeabcc_LST_PRTCL_myapp-ddbdb0f3edda707128cd968730e911cf47eeabcc_LST_PRT.id}"
  }

  output "lst-myapp-ddbdb0f3edda707128cd968730e911cf47eeabcc-myapp-ddbdb0f3edda707128cd968730e911cf47eeabcc_LST_PRTCL_myapp-ddbdb0f3edda707128cd968730e911cf47eeabcc_LST_PRT-arn" {
    value = "${aws_alb_listener.myapp-ddbdb0f3edda707128cd968730e911cf47eeabcc_LST_PRTCL_myapp-ddbdb0f3edda707128cd968730e911cf47eeabcc_LST_PRT.arn}"
  }
