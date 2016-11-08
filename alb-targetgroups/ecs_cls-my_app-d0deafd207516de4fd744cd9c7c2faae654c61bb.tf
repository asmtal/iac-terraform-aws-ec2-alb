resource "aws_alb_target_group" "ecs_cls-my_app-d0deafd207516de4fd744cd9c7c2faae654c61bb" {
  name      = "ecs_cls-my_app-d0deafd207516de4fd744cd9c7c2faae654c61bb"
  port      = "ecs_cls-my_app-d0deafd207516de4fd744cd9c7c2faae654c61bb_PRT"
  protocol  = "ecs_cls-my_app-d0deafd207516de4fd744cd9c7c2faae654c61bb_PRTCL"
  vpc_id    = "${data.terraform_remote_state.aws_vpc.MasterVPC-ID}"
}

output "tgrp-ecs_cls-my_app-d0deafd207516de4fd744cd9c7c2faae654c61bb-id" {
  value = "${aws_alb_target_group.ecs_cls-my_app-d0deafd207516de4fd744cd9c7c2faae654c61bb-.id}"
}

output "tgrp-ecs_cls-my_app-d0deafd207516de4fd744cd9c7c2faae654c61bb-arn" {
  value = "${aws_alb_target_group.ecs_cls-my_app-d0deafd207516de4fd744cd9c7c2faae654c61bb.arn}"
}

output "tgrp-ecs_cls-my_app-d0deafd207516de4fd744cd9c7c2faae654c61bb-arn_suffix" {
  value = "${aws_alb_target_group.ecs_cls-my_app-d0deafd207516de4fd744cd9c7c2faae654c61bb.arn_suffix}"
}
