resource "aws_alb_target_group" "ecs_cls-my_app-5f708adddf4a836393924f977d94fc29bfb423d8" {
  name      = "ecs_cls-my_app-5f708adddf4a836393924f977d94fc29bfb423d8"
  port      = "ecs_cls-my_app-5f708adddf4a836393924f977d94fc29bfb423d8_PRT"
  protocol  = "ecs_cls-my_app-5f708adddf4a836393924f977d94fc29bfb423d8_PRTCL"
  vpc_id    = "${data.terraform_remote_state.aws_vpc.MasterVPC-ID}"
}

output "tgrp-ecs_cls-my_app-5f708adddf4a836393924f977d94fc29bfb423d8-id" {
  value = "${aws_alb_target_group.ecs_cls-my_app-5f708adddf4a836393924f977d94fc29bfb423d8-.id}"
}

output "tgrp-ecs_cls-my_app-5f708adddf4a836393924f977d94fc29bfb423d8-arn" {
  value = "${aws_alb_target_group.ecs_cls-my_app-5f708adddf4a836393924f977d94fc29bfb423d8.arn}"
}

output "tgrp-ecs_cls-my_app-5f708adddf4a836393924f977d94fc29bfb423d8-arn_suffix" {
  value = "${aws_alb_target_group.ecs_cls-my_app-5f708adddf4a836393924f977d94fc29bfb423d8.arn_suffix}"
}
