resource "aws_alb" "external" {
  name            = "${data.terraform_remote_state.project.name}-external"
  internal        = false
  idle_timeout    = 60

  subnets         = ["${data.terraform_remote_state.aws_vpc.subnet_public_id}"]
  security_groups = ["${data.terraform_remote_state.aws_vpc.security_group_ec2_alb_external_id}"]

  enable_deletion_protection = false

  access_logs {
    #enable  = true
    bucket  = "${aws_s3_bucket.ec2_alb_external_logs.id}"
  }
}

output "external_id"                        {value = "${aws_alb.external.id}"}
output "external_arn"                       {value = "${aws_alb.external.arn}"}
output "external_arn_suffix"                {value = "${aws_alb.external.arn_suffix}"}
output "external_zone_id"                   {value = "${aws_alb.external.zone_id}"}
output "external_dns_name"                  {value = "${aws_alb.external.dns_name}"}
output "external_canonical_hosted_zone_id"  {value = "${aws_alb.external.canonical_hosted_zone_id}"}


// resource "aws_alb" "internal" {
//   name            = "${data.terraform_remote_state.project.name}-internal"
//   internal        = true
//   idle_timeout    = 60
//
//   subnets         = ["${data.terraform_remote_state.aws_vpc.subnet_private_id}"]
//   security_groups = ["${data.terraform_remote_state.aws_vpc.security_group_ec2_alb_internal_id}"]
//
//   enable_deletion_protection = false
//
//   access_logs {
//     #enable  = true
//     bucket  = "${aws_s3_bucket.ec2_alb_internal_logs.id}"
//   }
// }
//
// output "internal_id"                        {value = "${aws_alb.internal.id}"}
// output "internal_arn"                       {value = "${aws_alb.internal.arn}"}
// output "internal_arn_suffix"                {value = "${aws_alb.internal.arn_suffix}"}
// output "internal_zone_id"                   {value = "${aws_alb.internal.zone_id}"}
// output "internal_dns_name"                  {value = "${aws_alb.internal.dns_name}"}
// output "internal_canonical_hosted_zone_id"  {value = "${aws_alb.internal.canonical_hosted_zone_id}"}
