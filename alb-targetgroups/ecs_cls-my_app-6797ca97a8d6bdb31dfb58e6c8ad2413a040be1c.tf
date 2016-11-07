resource "aws_alb_target_group" "ecs_cls-my_app-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c" {
  name      = "ecs_cls-my_app-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c"
  port      = "ecs_cls-my_app-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c_PRT"
  protocol  = "ecs_cls-my_app-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c_PRTCL"
  vpc_id    = "${data.terraform_remote_state.aws_vpc.MasterVPC-ID}"
}

output "tgrp-ecs_cls-my_app-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c-id" {
  value = "${aws_alb_target_group.ecs_cls-my_app-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c-.id}"
}

output "tgrp-ecs_cls-my_app-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c-arn" {
  value = "${aws_alb_target_group.ecs_cls-my_app-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c.arn}"
}

output "tgrp-ecs_cls-my_app-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c-arn_suffix" {
  value = "${aws_alb_target_group.ecs_cls-my_app-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c.arn_suffix}"
}
