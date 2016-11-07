resource "aws_alb" "myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94" {
  name      = "myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94"
  subnets   = ["${data.terraform_remote_state.aws_vpc.vpc_subnets_public}"]
  internal  = false
  enable_deletion_protection = false

  tags {
    Name = "myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94"
  }
}


output "myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94-id" {
  value = "${aws_alb.myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94.id}"
}

output "myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94_arn" {
  value = "${aws_alb.myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94.arn}"
}

output "myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94_suffix" {
  value = "${aws_alb.myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94.arn_suffix}"
}

output "myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94_dns" {
  value = "${aws_alb.myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94.dns_name}"
}

output "myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94_zoneid" {
  value = "${aws_alb.myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94.zone_id}"
}

output "myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94_canonicalhosted_zoneid" {
  value = "${aws_alb.myapp-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94.canonical_hosted_zone_id}"
}
