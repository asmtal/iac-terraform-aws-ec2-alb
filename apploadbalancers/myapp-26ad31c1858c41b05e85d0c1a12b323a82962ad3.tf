resource "aws_alb" "myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3" {
  name      = "myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3"
  subnets   = ["${data.terraform_remote_state.aws_vpc.vpc_subnets_public}"]
  internal  = false
  enable_deletion_protection = false

  tags {
    Name = "myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3"
  }
}


output "myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3-id" {
  value = "${aws_alb.myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3.id}"
}

output "myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3_arn" {
  value = "${aws_alb.myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3.arn}"
}

output "myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3_suffix" {
  value = "${aws_alb.myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3.arn_suffix}"
}

output "myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3_dns" {
  value = "${aws_alb.myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3.dns_name}"
}

output "myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3_zoneid" {
  value = "${aws_alb.myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3.zone_id}"
}

output "myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3_canonicalhosted_zoneid" {
  value = "${aws_alb.myapp-26ad31c1858c41b05e85d0c1a12b323a82962ad3.canonical_hosted_zone_id}"
}
