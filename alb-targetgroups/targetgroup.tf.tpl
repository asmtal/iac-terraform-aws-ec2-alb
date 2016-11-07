resource "aws_alb_target_group" "ecs_cluster-lep_stack" {
  name = "ecs-cluster-lep-stack"
  port = 80
  protocol = "HTTP"
  vpc_id  = "${data.terraform_remote_state.aws_vpc.MasterVPC-ID}"
}

  output "TargetGroup-ECS_Cluster-LEP_Stack-ID" {
    value = "${aws_alb_target_group.ecs_cluster-lep_stack.id}"
  }

  output "TargetGroup-ECS_Cluster-LEP_Stack-ARN" {
    value = "${aws_alb_target_group.ecs_cluster-lep_stack.arn}"
  }

  output "TargetGroup-ECS_Cluster-LEP_Stack-ARN_Suffix" {
    value = "${aws_alb_target_group.ecs_cluster-lep_stack.arn_suffix}"
  }

/*
resource "aws_alb_target_group" "ecs-cluster-phpfpm" {
  name = "ecs-cluster-phpfpm"
  port = 9000
  protocol = "HTTP"
  vpc_id  = "${data.terraform_remote_state.aws_vpc.MasterVPC-ID}"
}

  output "TargetGroup-ECS_Cluster-PHPFPM-ID" {
    value = "${aws_alb_target_group.ecs-cluster-phpfpm.id}"
  }

  output "TargetGroup-ECS_Cluster-PHPFPM_ARN" {
    value = "${aws_alb_target_group.ecs-cluster-phpfpm.arn}"
  }

  output "TargetGroup-ECS_Cluster-PHPFPM_ARN_Suffix" {
    value = "${aws_alb_target_group.ecs-cluster-phpfpm.arn_suffix}"
  }
*/
