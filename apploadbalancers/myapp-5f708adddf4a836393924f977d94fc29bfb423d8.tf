resource "aws_alb" "myapp-5f708adddf4a836393924f977d94fc29bfb423d8" {
  name      = "myapp-5f708adddf4a836393924f977d94fc29bfb423d8"
  subnets   = ["${data.terraform_remote_state.aws_vpc.vpc_subnets_public}"]
  internal  = false
  enable_deletion_protection = false

  tags {
    Name = "myapp-5f708adddf4a836393924f977d94fc29bfb423d8"
  }
}


output "myapp-5f708adddf4a836393924f977d94fc29bfb423d8-id" {
  value = "${aws_alb.myapp-5f708adddf4a836393924f977d94fc29bfb423d8.id}"
}

output "myapp-5f708adddf4a836393924f977d94fc29bfb423d8_arn" {
  value = "${aws_alb.myapp-5f708adddf4a836393924f977d94fc29bfb423d8.arn}"
}

output "myapp-5f708adddf4a836393924f977d94fc29bfb423d8_suffix" {
  value = "${aws_alb.myapp-5f708adddf4a836393924f977d94fc29bfb423d8.arn_suffix}"
}

output "myapp-5f708adddf4a836393924f977d94fc29bfb423d8_dns" {
  value = "${aws_alb.myapp-5f708adddf4a836393924f977d94fc29bfb423d8.dns_name}"
}

output "myapp-5f708adddf4a836393924f977d94fc29bfb423d8_zoneid" {
  value = "${aws_alb.myapp-5f708adddf4a836393924f977d94fc29bfb423d8.zone_id}"
}

output "myapp-5f708adddf4a836393924f977d94fc29bfb423d8_canonicalhosted_zoneid" {
  value = "${aws_alb.myapp-5f708adddf4a836393924f977d94fc29bfb423d8.canonical_hosted_zone_id}"
}
