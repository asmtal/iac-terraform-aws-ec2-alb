resource "aws_alb" "myapp-5d1585057277047e3c79ff70d09d112776fc08ea" {
  name      = "myapp-5d1585057277047e3c79ff70d09d112776fc08ea"
  subnets   = ["${data.terraform_remote_state.aws_vpc.vpc_subnets_public}"]
  internal  = false
  enable_deletion_protection = false

  tags {
    Name = "myapp-5d1585057277047e3c79ff70d09d112776fc08ea"
  }
}


output "myapp-5d1585057277047e3c79ff70d09d112776fc08ea-id" {
  value = "${aws_alb.myapp-5d1585057277047e3c79ff70d09d112776fc08ea.id}"
}

output "myapp-5d1585057277047e3c79ff70d09d112776fc08ea_arn" {
  value = "${aws_alb.myapp-5d1585057277047e3c79ff70d09d112776fc08ea.arn}"
}

output "myapp-5d1585057277047e3c79ff70d09d112776fc08ea_suffix" {
  value = "${aws_alb.myapp-5d1585057277047e3c79ff70d09d112776fc08ea.arn_suffix}"
}

output "myapp-5d1585057277047e3c79ff70d09d112776fc08ea_dns" {
  value = "${aws_alb.myapp-5d1585057277047e3c79ff70d09d112776fc08ea.dns_name}"
}

output "myapp-5d1585057277047e3c79ff70d09d112776fc08ea_zoneid" {
  value = "${aws_alb.myapp-5d1585057277047e3c79ff70d09d112776fc08ea.zone_id}"
}

output "myapp-5d1585057277047e3c79ff70d09d112776fc08ea_canonicalhosted_zoneid" {
  value = "${aws_alb.myapp-5d1585057277047e3c79ff70d09d112776fc08ea.canonical_hosted_zone_id}"
}
