resource "aws_alb_target_group" "ecs_cls-my_app-ddbdb0f3edda707128cd968730e911cf47eeabcc" {
  name      = "ecs_cls-my_app-ddbdb0f3edda707128cd968730e911cf47eeabcc"
  port      = "ecs_cls-my_app-ddbdb0f3edda707128cd968730e911cf47eeabcc_PRT"
  protocol  = "ecs_cls-my_app-ddbdb0f3edda707128cd968730e911cf47eeabcc_PRTCL"
  vpc_id    = "${data.terraform_remote_state.aws_vpc.MasterVPC-ID}"
}

output "tgrp-ecs_cls-my_app-ddbdb0f3edda707128cd968730e911cf47eeabcc-id" {
  value = "${aws_alb_target_group.ecs_cls-my_app-ddbdb0f3edda707128cd968730e911cf47eeabcc-.id}"
}

output "tgrp-ecs_cls-my_app-ddbdb0f3edda707128cd968730e911cf47eeabcc-arn" {
  value = "${aws_alb_target_group.ecs_cls-my_app-ddbdb0f3edda707128cd968730e911cf47eeabcc.arn}"
}

output "tgrp-ecs_cls-my_app-ddbdb0f3edda707128cd968730e911cf47eeabcc-arn_suffix" {
  value = "${aws_alb_target_group.ecs_cls-my_app-ddbdb0f3edda707128cd968730e911cf47eeabcc.arn_suffix}"
}
