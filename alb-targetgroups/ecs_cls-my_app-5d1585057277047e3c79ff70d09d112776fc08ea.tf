resource "aws_alb_target_group" "ecs_cls-my_app-5d1585057277047e3c79ff70d09d112776fc08ea" {
  name      = "ecs_cls-my_app-5d1585057277047e3c79ff70d09d112776fc08ea"
  port      = "ecs_cls-my_app-5d1585057277047e3c79ff70d09d112776fc08ea_PRT"
  protocol  = "ecs_cls-my_app-5d1585057277047e3c79ff70d09d112776fc08ea_PRTCL"
  vpc_id    = "${data.terraform_remote_state.aws_vpc.MasterVPC-ID}"
}

output "tgrp-ecs_cls-my_app-5d1585057277047e3c79ff70d09d112776fc08ea-id" {
  value = "${aws_alb_target_group.ecs_cls-my_app-5d1585057277047e3c79ff70d09d112776fc08ea-.id}"
}

output "tgrp-ecs_cls-my_app-5d1585057277047e3c79ff70d09d112776fc08ea-arn" {
  value = "${aws_alb_target_group.ecs_cls-my_app-5d1585057277047e3c79ff70d09d112776fc08ea.arn}"
}

output "tgrp-ecs_cls-my_app-5d1585057277047e3c79ff70d09d112776fc08ea-arn_suffix" {
  value = "${aws_alb_target_group.ecs_cls-my_app-5d1585057277047e3c79ff70d09d112776fc08ea.arn_suffix}"
}
