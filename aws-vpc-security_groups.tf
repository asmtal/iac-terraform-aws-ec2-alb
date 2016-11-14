resource "aws_security_group" "ecs_cluster_external_alb" {
  vpc_id      = "${data.terraform_remote_state.aws_vpc.ecs_cluster_vpc_id}"

  name        = "ec2_alb_ecs_cluster_external"
  description = "VPC Security Group controlling access to ECS Cluster External Elastic LoadBalancer"

  tags {
    Name          = "ec2_alb_ecs_cluster_external"
    Resource      = "alb"
    ResourceGroup = "ec2"
  }
}


resource "aws_security_group" "ecs_cluster_internal_alb" {
  vpc_id      = "${data.terraform_remote_state.aws_vpc.ecs_cluster_vpc_id}"

  name        = "ec2_alb_ecs_cluster_internal"
  description = "VPC Security Group controlling access to ECS Cluster Internal Elastic LoadBalancer"

  tags {
    Name          = "ec2_alb_ecs_cluster_internal"
    Resource      = "alb"
    ResourceGroup = "ec2"
  }
}
