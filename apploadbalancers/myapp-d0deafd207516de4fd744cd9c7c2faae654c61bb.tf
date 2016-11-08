resource "aws_alb" "myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb" {
  name      = "myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb"
  subnets   = ["${data.terraform_remote_state.aws_vpc.vpc_subnets_public}"]
  internal  = false
  enable_deletion_protection = false

  tags {
    Name = "myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb"
  }
}


output "myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb-id" {
  value = "${aws_alb.myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb.id}"
}

output "myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb_arn" {
  value = "${aws_alb.myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb.arn}"
}

output "myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb_suffix" {
  value = "${aws_alb.myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb.arn_suffix}"
}

output "myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb_dns" {
  value = "${aws_alb.myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb.dns_name}"
}

output "myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb_zoneid" {
  value = "${aws_alb.myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb.zone_id}"
}

output "myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb_canonicalhosted_zoneid" {
  value = "${aws_alb.myapp-d0deafd207516de4fd744cd9c7c2faae654c61bb.canonical_hosted_zone_id}"
}
