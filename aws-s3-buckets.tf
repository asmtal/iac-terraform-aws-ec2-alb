resource "aws_s3_bucket" "ec2_alb_external_logs" {
    bucket = "${data.terraform_remote_state.project.name}-${data.terraform_remote_state.aws_ds.region_name}-ec2-alb-external-logs"
    acl = "private"

    policy = <<POLICY
{
  "Id": "Policy",
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::${data.terraform_remote_state.project.name}-${data.terraform_remote_state.aws_ds.region_name}-ec2-alb-external-logs/AWSLogs/${data.terraform_remote_state.aws_ds.account_id}/*",
      "Principal": {
        "AWS": [
          "${data.terraform_remote_state.aws_ds.elb_service_account_id}"
        ]
      }
    }
  ]
}
POLICY

    force_destroy = true

    lifecycle_rule {
      prefix = "AWSLogs"
      enabled = true

      transition {
        days = 7
        storage_class = "GLACIER"
      }

    }

    tags {
      Name = "${data.terraform_remote_state.project.name}-${data.terraform_remote_state.aws_ds.region_name}-ec2-alb-external-logs"
    }
}

output "s3_bucket_ec2_alb_external_logs_id"     {value = "${aws_s3_bucket.ec2_alb_external_logs.id}"}
output "s3_bucket_ec2_alb_external_logs_arn"    {value = "${aws_s3_bucket.ec2_alb_external_logs.arn}"}
output "s3_bucket_ec2_alb_external_logs_region" {value = "${aws_s3_bucket.ec2_alb_external_logs.region}"}
