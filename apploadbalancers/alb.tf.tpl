resource "aws_alb" "external" {
  name      = "tf-alb-ecs"
  subnets   = ["${data.terraform_remote_state.aws_vpc.vpc_subnets_public}"]
  internal  = false
  enable_deletion_protection = false

  tags {
    Name = "tf-alb-ecs"
  }
}


output "externalAppLB-ID" {
  value = "${aws_alb.external.id}"
}

output "externalAppLB_ARN" {
  value = "${aws_alb.external.arn}"
}

output "externalAppLB_ARN_Suffix" {
  value = "${aws_alb.external.arn_suffix}"
}

output "externalAppLB_DNS" {
  value = "${aws_alb.external.dns_name}"
}

output "externalAppLB_ZoneID" {
  value = "${aws_alb.external.zone_id}"
}

output "externalAppLB_CanonicalHosted_ZoneID" {
  value = "${aws_alb.external.canonical_hosted_zone_id}"
}

resource "aws_alb" "internal" {
  name      = "ecs-alb-internal"
  subnets   = ["${data.terraform_remote_state.aws_vpc.vpc_subnets_private}"]
  internal  = true
  enable_deletion_protection = false

  tags {
    Name = "ecs-alb-internal"
  }
}


output "internalAppLB-ID" {
  value = "${aws_alb.external.id}"
}

output "internalAppLB_ARN" {
  value = "${aws_alb.external.arn}"
}

output "internalAppLB_ARN_Suffix" {
  value = "${aws_alb.external.arn_suffix}"
}

output "internalAppLB_DNS" {
  value = "${aws_alb.external.dns_name}"
}

output "internalAppLB_ZoneID" {
  value = "${aws_alb.external.zone_id}"
}

output "internalAppLB_CanonicalHosted_ZoneID" {
  value = "${aws_alb.external.canonical_hosted_zone_id}"
}
