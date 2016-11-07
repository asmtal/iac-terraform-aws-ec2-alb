resource "aws_alb_target_group" "ecs_cls-my_app-51054880c6b1945a14e07ff2d1f46990444b6e39" {
  name      = "ecs_cls-my_app-51054880c6b1945a14e07ff2d1f46990444b6e39"
  port      = "ecs_cls-my_app-51054880c6b1945a14e07ff2d1f46990444b6e39_PRT"
  protocol  = "ecs_cls-my_app-51054880c6b1945a14e07ff2d1f46990444b6e39_PRTCL"
  vpc_id    = "${data.terraform_remote_state.aws_vpc.MasterVPC-ID}"
}

output "tgrp-ecs_cls-my_app-51054880c6b1945a14e07ff2d1f46990444b6e39-id" {
  value = "${aws_alb_target_group.ecs_cls-my_app-51054880c6b1945a14e07ff2d1f46990444b6e39-.id}"
}

output "tgrp-ecs_cls-my_app-51054880c6b1945a14e07ff2d1f46990444b6e39-arn" {
  value = "${aws_alb_target_group.ecs_cls-my_app-51054880c6b1945a14e07ff2d1f46990444b6e39.arn}"
}

output "tgrp-ecs_cls-my_app-51054880c6b1945a14e07ff2d1f46990444b6e39-arn_suffix" {
  value = "${aws_alb_target_group.ecs_cls-my_app-51054880c6b1945a14e07ff2d1f46990444b6e39.arn_suffix}"
}
