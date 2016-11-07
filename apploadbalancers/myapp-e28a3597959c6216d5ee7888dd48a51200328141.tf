resource "aws_alb" "myapp-e28a3597959c6216d5ee7888dd48a51200328141" {
  name      = "myapp-e28a3597959c6216d5ee7888dd48a51200328141"
  subnets   = ["${data.terraform_remote_state.aws_vpc.vpc_subnets_public}"]
  internal  = false
  enable_deletion_protection = false

  tags {
    Name = "myapp-e28a3597959c6216d5ee7888dd48a51200328141"
  }
}


output "myapp-e28a3597959c6216d5ee7888dd48a51200328141-id" {
  value = "${aws_alb.myapp-e28a3597959c6216d5ee7888dd48a51200328141.id}"
}

output "myapp-e28a3597959c6216d5ee7888dd48a51200328141_arn" {
  value = "${aws_alb.myapp-e28a3597959c6216d5ee7888dd48a51200328141.arn}"
}

output "myapp-e28a3597959c6216d5ee7888dd48a51200328141_suffix" {
  value = "${aws_alb.myapp-e28a3597959c6216d5ee7888dd48a51200328141.arn_suffix}"
}

output "myapp-e28a3597959c6216d5ee7888dd48a51200328141_dns" {
  value = "${aws_alb.myapp-e28a3597959c6216d5ee7888dd48a51200328141.dns_name}"
}

output "myapp-e28a3597959c6216d5ee7888dd48a51200328141_zoneid" {
  value = "${aws_alb.myapp-e28a3597959c6216d5ee7888dd48a51200328141.zone_id}"
}

output "myapp-e28a3597959c6216d5ee7888dd48a51200328141_canonicalhosted_zoneid" {
  value = "${aws_alb.myapp-e28a3597959c6216d5ee7888dd48a51200328141.canonical_hosted_zone_id}"
}
