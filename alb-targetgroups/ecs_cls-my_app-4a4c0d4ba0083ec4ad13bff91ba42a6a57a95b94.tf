resource "aws_alb_target_group" "ecs_cls-my_app-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94" {
  name      = "ecs_cls-my_app-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94"
  port      = "ecs_cls-my_app-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94_PRT"
  protocol  = "ecs_cls-my_app-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94_PRTCL"
  vpc_id    = "${data.terraform_remote_state.aws_vpc.MasterVPC-ID}"
}

output "tgrp-ecs_cls-my_app-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94-id" {
  value = "${aws_alb_target_group.ecs_cls-my_app-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94-.id}"
}

output "tgrp-ecs_cls-my_app-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94-arn" {
  value = "${aws_alb_target_group.ecs_cls-my_app-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94.arn}"
}

output "tgrp-ecs_cls-my_app-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94-arn_suffix" {
  value = "${aws_alb_target_group.ecs_cls-my_app-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94.arn_suffix}"
}
