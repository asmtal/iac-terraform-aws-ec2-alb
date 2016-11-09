resource "aws_alb_listener" "myapp-5d1585057277047e3c79ff70d09d112776fc08ea_LST_PRTCL_myapp-5d1585057277047e3c79ff70d09d112776fc08ea_LST_PRT" {
  port      = "myapp-5d1585057277047e3c79ff70d09d112776fc08ea_LST_PRT"
  protocol  = "myapp-5d1585057277047e3c79ff70d09d112776fc08ea_LST_PRTCL"
  load_balancer_arn = "${aws_alb.myapp-5d1585057277047e3c79ff70d09d112776fc08ea.arn}"

  default_action {
    type              = "forward"
    target_group_arn  = "${aws_alb_target_group.myapp-5d1585057277047e3c79ff70d09d112776fc08ea_TG.arn}"
  }
}
  output "lst-myapp-5d1585057277047e3c79ff70d09d112776fc08ea-myapp-5d1585057277047e3c79ff70d09d112776fc08ea_LST_PRTCL_myapp-5d1585057277047e3c79ff70d09d112776fc08ea_LST_PRT-id" {
    value = "${aws_alb_listener.myapp-5d1585057277047e3c79ff70d09d112776fc08ea_LST_PRTCL_myapp-5d1585057277047e3c79ff70d09d112776fc08ea_LST_PRT.id}"
  }

  output "lst-myapp-5d1585057277047e3c79ff70d09d112776fc08ea-myapp-5d1585057277047e3c79ff70d09d112776fc08ea_LST_PRTCL_myapp-5d1585057277047e3c79ff70d09d112776fc08ea_LST_PRT-arn" {
    value = "${aws_alb_listener.myapp-5d1585057277047e3c79ff70d09d112776fc08ea_LST_PRTCL_myapp-5d1585057277047e3c79ff70d09d112776fc08ea_LST_PRT.arn}"
  }
