resource "aws_alb_target_group" "" {
  name      = ""
  port      = "_PRT"
  protocol  = "_PRTCL"
  vpc_id    = "${data.terraform_remote_state.aws_vpc.MasterVPC-ID}"
}

output "tgrp--id" {
  value = "${aws_alb_target_group.-.id}"
}

output "tgrp--arn" {
  value = "${aws_alb_target_group..arn}"
}

output "tgrp--arn_suffix" {
  value = "${aws_alb_target_group..arn_suffix}"
}
