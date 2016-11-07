resource "aws_alb" "AWS_EC2_ALB" {
  name      = "AWS_EC2_ALB"
  subnets   = ["${data.terraform_remote_state.aws_vpc.vpc_subnets_public}"]
  internal  = false
  enable_deletion_protection = false

  tags {
    Name = "AWS_EC2_ALB"
  }
}


output "AWS_EC2_ALB-id" {
  value = "${aws_alb.AWS_EC2_ALB.id}"
}

output "AWS_EC2_ALB_arn" {
  value = "${aws_alb.AWS_EC2_ALB.arn}"
}

output "AWS_EC2_ALB_suffix" {
  value = "${aws_alb.AWS_EC2_ALB.arn_suffix}"
}

output "AWS_EC2_ALB_dns" {
  value = "${aws_alb.AWS_EC2_ALB.dns_name}"
}

output "AWS_EC2_ALB_zoneid" {
  value = "${aws_alb.AWS_EC2_ALB.zone_id}"
}

output "AWS_EC2_ALB_canonicalhosted_zoneid" {
  value = "${aws_alb.AWS_EC2_ALB.canonical_hosted_zone_id}"
}
