resource "aws_alb_target_group" "ecs_cls-my_app-26ad31c1858c41b05e85d0c1a12b323a82962ad3" {
  name      = "ecs_cls-my_app-26ad31c1858c41b05e85d0c1a12b323a82962ad3"
  port      = "ecs_cls-my_app-26ad31c1858c41b05e85d0c1a12b323a82962ad3_PRT"
  protocol  = "ecs_cls-my_app-26ad31c1858c41b05e85d0c1a12b323a82962ad3_PRTCL"
  vpc_id    = "${data.terraform_remote_state.aws_vpc.MasterVPC-ID}"
}

output "tgrp-ecs_cls-my_app-26ad31c1858c41b05e85d0c1a12b323a82962ad3-id" {
  value = "${aws_alb_target_group.ecs_cls-my_app-26ad31c1858c41b05e85d0c1a12b323a82962ad3-.id}"
}

output "tgrp-ecs_cls-my_app-26ad31c1858c41b05e85d0c1a12b323a82962ad3-arn" {
  value = "${aws_alb_target_group.ecs_cls-my_app-26ad31c1858c41b05e85d0c1a12b323a82962ad3.arn}"
}

output "tgrp-ecs_cls-my_app-26ad31c1858c41b05e85d0c1a12b323a82962ad3-arn_suffix" {
  value = "${aws_alb_target_group.ecs_cls-my_app-26ad31c1858c41b05e85d0c1a12b323a82962ad3.arn_suffix}"
}
