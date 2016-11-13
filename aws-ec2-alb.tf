resource "aws_alb" "ecs_cluster_external" {
  name_prefix     = "ecs-cluster-ext-"
  internal        = false
  idle_timeout    = 60

  subnets         = ["${data.terraform_remote_state.aws_vpc.ecs_cluster_vpc_subnet_public_id}"]
  security_groups = ["${aws_security_group.ecs_cluster_external_alb.id}"]

  enable_deletion_protection = false

  access_logs {
    enable  = true
    bucket  = "${aws_s3_bucket.ecs_cluster_external_alb_logs.id}"
  }
}

output "alb_ecs_cluster_external_id"                        {value = "${aws_alb.ecs_cluster_external.id}"}
output "alb_ecs_cluster_external_arn"                       {value = "${aws_alb.ecs_cluster_external.arn}"}
output "alb_ecs_cluster_external_arn_suffix"                {value = "${aws_alb.ecs_cluster_external.arn_suffix}"}
output "alb_ecs_cluster_external_zone_id"                   {value = "${aws_alb.ecs_cluster_external.zone_id}"}
output "alb_ecs_cluster_external_dns_name"                  {value = "${aws_alb.ecs_cluster_external.dns_name}"}
output "alb_ecs_cluster_external_canonical_hosted_zone_id"  {value = "${aws_alb.ecs_cluster_external.canonical_hosted_zone_id}"}


resource "aws_alb" "ecs_cluster_internal" {
  name_prefix     = "ecs-cluster-int-"
  internal        = true
  idle_timeout    = 60

  subnets         = ["${data.terraform_remote_state.aws_vpc.ecs_cluster_vpc_subnet_private_id}"]
  security_groups = ["${aws_security_group.ecs_cluster_internal_alb.id}"]

  enable_deletion_protection = false

  access_logs {
    enable  = true
    bucket  = "${aws_s3_bucket.ecs_cluster_internal_alb_logs.id}"
  }
}

output "alb_ecs_cluster_internal_id"                        {value = "${aws_alb.ecs_cluster_internal.id}"}
output "alb_ecs_cluster_internal_arn"                       {value = "${aws_alb.ecs_cluster_internal.arn}"}
output "alb_ecs_cluster_internal_arn_suffix"                {value = "${aws_alb.ecs_cluster_internal.arn_suffix}"}
output "alb_ecs_cluster_internal_zone_id"                   {value = "${aws_alb.ecs_cluster_internal.zone_id}"}
output "alb_ecs_cluster_internal_dns_name"                  {value = "${aws_alb.ecs_cluster_internal.dns_name}"}
output "alb_ecs_cluster_internal_canonical_hosted_zone_id"  {value = "${aws_alb.ecs_cluster_internal.canonical_hosted_zone_id}"}
