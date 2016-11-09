resource "aws_alb" "" {
  name      = ""
  subnets   = ["${data.terraform_remote_state.aws_vpc.vpc_subnets_public}"]
  internal  = false
  enable_deletion_protection = false

  tags {
    Name = ""
  }
}


output "-id" {
  value = "${aws_alb..id}"
}

output "_arn" {
  value = "${aws_alb..arn}"
}

output "_suffix" {
  value = "${aws_alb..arn_suffix}"
}

output "_dns" {
  value = "${aws_alb..dns_name}"
}

output "_zoneid" {
  value = "${aws_alb..zone_id}"
}

output "_canonicalhosted_zoneid" {
  value = "${aws_alb..canonical_hosted_zone_id}"
}
