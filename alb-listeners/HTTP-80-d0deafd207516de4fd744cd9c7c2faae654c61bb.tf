resource "aws_alb_listener" "myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb_LST_PRTCL_myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb_LST_PRT" {
  port      = "myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb_LST_PRT"
  protocol  = "myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb_LST_PRTCL"
  load_balancer_arn = "${aws_alb.myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb.arn}"

  default_action {
    type              = "forward"
    target_group_arn  = "${aws_alb_target_group.myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb_TG.arn}"
  }
}
  output "lst-myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb-myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb_LST_PRTCL_myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb_LST_PRT-id" {
    value = "${aws_alb_listener.myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb_LST_PRTCL_myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb_LST_PRT.id}"
  }

  output "lst-myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb-myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb_LST_PRTCL_myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb_LST_PRT-arn" {
    value = "${aws_alb_listener.myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb_LST_PRTCL_myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb_LST_PRT.arn}"
  }
