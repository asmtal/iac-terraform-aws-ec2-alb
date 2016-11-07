resource "aws_alb_target_group" "AWS_EC2_ALB_TG" {
  name      = "AWS_EC2_ALB_TG"
  port      = "AWS_EC2_ALB_TG_PRT"
  protocol  = "AWS_EC2_ALB_TG_PRTCL"
  vpc_id    = "${data.terraform_remote_state.aws_vpc.MasterVPC-ID}"
}

output "tgrp-AWS_EC2_ALB_TG-id" {
  value = "${aws_alb_target_group.AWS_EC2_ALB_TG-.id}"
}

output "tgrp-AWS_EC2_ALB_TG-arn" {
  value = "${aws_alb_target_group.AWS_EC2_ALB_TG.arn}"
}

output "tgrp-AWS_EC2_ALB_TG-arn_suffix" {
  value = "${aws_alb_target_group.AWS_EC2_ALB_TG.arn_suffix}"
}
