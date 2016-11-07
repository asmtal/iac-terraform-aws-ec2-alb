resource "aws_alb" "AWS_EC2_ALB" {
  name      = "AWS_EC2_ALB"
  subnets   = ["${data.terraform_remote_state.aws_vpc.vpc_subnets_public}"]
  internal  = false
  enable_deletion_protection = false

  tags {
    Name = "AWS_EC2_ALB"
  }
}


output "AWS_EC2_ALB-ID" {
  value = "${aws_alb.AWS_EC2_ALB.id}"
}

output "AWS_EC2_ALB_ARN" {
  value = "${aws_alb.AWS_EC2_ALB.arn}"
}

output "AWS_EC2_ALB_Suffix" {
  value = "${aws_alb.AWS_EC2_ALB.arn_suffix}"
}

output "AWS_EC2_ALB_DNS" {
  value = "${aws_alb.AWS_EC2_ALB.dns_name}"
}

output "AWS_EC2_ALB_ZoneID" {
  value = "${aws_alb.AWS_EC2_ALB.zone_id}"
}

output "AWS_EC2_ALB_CanonicalHosted_ZoneID" {
  value = "${aws_alb.AWS_EC2_ALB.canonical_hosted_zone_id}"
}
