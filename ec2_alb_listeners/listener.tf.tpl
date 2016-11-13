resource "aws_alb_listener" "AWS_EC2_ALB_LST_PRTCL_AWS_EC2_ALB_LST_PRT" {
  port      = "AWS_EC2_ALB_LST_PRT"
  protocol  = "AWS_EC2_ALB_LST_PRTCL"
  load_balancer_arn = "${aws_alb.AWS_EC2_ALB.arn}"

  default_action {
    type              = "forward"
    target_group_arn  = "${aws_alb_target_group.AWS_EC2_ALB_TG.arn}"
  }
}
  output "lst-AWS_EC2_ALB-AWS_EC2_ALB_LST_PRTCL_AWS_EC2_ALB_LST_PRT-id" {
    value = "${aws_alb_listener.AWS_EC2_ALB_LST_PRTCL_AWS_EC2_ALB_LST_PRT.id}"
  }

  output "lst-AWS_EC2_ALB-AWS_EC2_ALB_LST_PRTCL_AWS_EC2_ALB_LST_PRT-arn" {
    value = "${aws_alb_listener.AWS_EC2_ALB_LST_PRTCL_AWS_EC2_ALB_LST_PRT.arn}"
  }
