resource "aws_alb" "ecs_cluster_external" {
  name_prefix     = "ecs-cluster"
  internal        = false
  idle_timeout    = 60

  subnets         = ["${data.terraform_remote_state.aws_vpc.vpc_subnets_public}"]
  security_groups = []

  enable_deletion_protection = false

  access_logs {
    enable  = true
    bucket  =
    prefix  =

  }

  tags {
    Name = "ecs-cluster-external-alb"
  }
}

output "alb_ecs_cluster_external_id"                        {value = "${aws_alb.ecs_cluster_external.id}"}
output "alb_ecs_cluster_external_arn"                       {value = "${aws_alb.ecs_cluster_external.arn}"}
output "alb_ecs_cluster_external_arn_suffix"                {value = "${aws_alb.ecs_cluster_external.arn_suffix}"}
output "alb_ecs_cluster_external_zone_id"                   {value = "${aws_alb.ecs_cluster_external.zone_id}"}
output "alb_ecs_cluster_external_dns_name"                  {value = "${aws_alb.ecs_cluster_external.dns_name}"}
output "alb_ecs_cluster_external_canonical_hosted_zone_id"  {value = "${aws_alb.ecs_cluster_external.canonical_hosted_zone_id}"}

resource "aws_alb" "ecs_cluster_internal" {
  name_prefix     = "ecs-cluster"
  internal        = true
  idle_timeout    = 60

  subnets         = ["${data.terraform_remote_state.aws_vpc.vpc_subnets_public}"]
  security_groups = []

  enable_deletion_protection = false

  access_logs {
    enable  = true
    bucket  =
    prefix  =

  }

  tags {
    Name = "ecs-cluster-internal-alb"
  }
}

output "alb_ecs_cluster_internal_id"                        {value = "${aws_alb.ecs_cluster_internal.id}"}
output "alb_ecs_cluster_internal_arn"                       {value = "${aws_alb.ecs_cluster_internal.arn}"}
output "alb_ecs_cluster_internal_arn_suffix"                {value = "${aws_alb.ecs_cluster_internal.arn_suffix}"}
output "alb_ecs_cluster_internal_zone_id"                   {value = "${aws_alb.ecs_cluster_internal.zone_id}"}
output "alb_ecs_cluster_internal_dns_name"                  {value = "${aws_alb.ecs_cluster_internal.dns_name}"}
output "alb_ecs_cluster_internal_canonical_hosted_zone_id"  {value = "${aws_alb.ecs_cluster_internal.canonical_hosted_zone_id}"}
