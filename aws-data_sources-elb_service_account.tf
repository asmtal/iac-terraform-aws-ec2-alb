data "aws_elb_service_account" "aws_account" { }

output "aws_elb_service_account_id" {
  value = "${data.aws_elb_service_account.aws_account.id}"
}

output "aws_elb_service_account_arn" {
  value = "${data.aws_elb_service_account.aws_account.arn}"
}
