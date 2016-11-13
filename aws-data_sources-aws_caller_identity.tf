data "aws_caller_identity" "aws_account" { }

output "aws_account_id" {
  value = "${data.aws_caller_identity.aws_account.account_id}"
}
