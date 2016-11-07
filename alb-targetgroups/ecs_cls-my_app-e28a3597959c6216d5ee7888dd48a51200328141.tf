resource "aws_alb_target_group" "ecs_cls-my_app-e28a3597959c6216d5ee7888dd48a51200328141" {
  name      = "ecs_cls-my_app-e28a3597959c6216d5ee7888dd48a51200328141"
  port      = "ecs_cls-my_app-e28a3597959c6216d5ee7888dd48a51200328141_PRT"
  protocol  = "ecs_cls-my_app-e28a3597959c6216d5ee7888dd48a51200328141_PRTCL"
  vpc_id    = "${data.terraform_remote_state.aws_vpc.MasterVPC-ID}"
}

output "tgrp-ecs_cls-my_app-e28a3597959c6216d5ee7888dd48a51200328141-id" {
  value = "${aws_alb_target_group.ecs_cls-my_app-e28a3597959c6216d5ee7888dd48a51200328141-.id}"
}

output "tgrp-ecs_cls-my_app-e28a3597959c6216d5ee7888dd48a51200328141-arn" {
  value = "${aws_alb_target_group.ecs_cls-my_app-e28a3597959c6216d5ee7888dd48a51200328141.arn}"
}

output "tgrp-ecs_cls-my_app-e28a3597959c6216d5ee7888dd48a51200328141-arn_suffix" {
  value = "${aws_alb_target_group.ecs_cls-my_app-e28a3597959c6216d5ee7888dd48a51200328141.arn_suffix}"
}
