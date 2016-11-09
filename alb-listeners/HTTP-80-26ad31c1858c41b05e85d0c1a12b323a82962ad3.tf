resource "aws_alb_listener" "myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3_LST_PRTCL_myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3_LST_PRT" {
  port      = "myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3_LST_PRT"
  protocol  = "myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3_LST_PRTCL"
  load_balancer_arn = "${aws_alb.myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3.arn}"

  default_action {
    type              = "forward"
    target_group_arn  = "${aws_alb_target_group.myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3_TG.arn}"
  }
}
  output "lst-myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3-myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3_LST_PRTCL_myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3_LST_PRT-id" {
    value = "${aws_alb_listener.myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3_LST_PRTCL_myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3_LST_PRT.id}"
  }

  output "lst-myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3-myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3_LST_PRTCL_myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3_LST_PRT-arn" {
    value = "${aws_alb_listener.myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3_LST_PRTCL_myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3_LST_PRT.arn}"
  }
