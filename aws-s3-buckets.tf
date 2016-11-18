resource "aws_s3_bucket" "ecs_cluster_external_alb_logs" {
    bucket = "${data.terraform_remote_state.aws_dcs.region_name}-ec2-alb-ecs-cluster-external-logs"
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
      "Resource": "arn:aws:s3:::${data.terraform_remote_state.aws_dcs.region_name}-ec2-alb-ecs-cluster-external-logs/AWSLogs/${data.terraform_remote_state.aws_dcs.mc_aws_account_id}/*",
      "Principal": {
        "AWS": [
          "${data.terraform_remote_state.aws_dcs.elb_service_account_id}"
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
      Name = "${data.terraform_remote_state.aws_dcs.region_name}-ec2-alb-ecs-cluster-external-logs"
    }
}

output "s3_bucket_alb_ecs_cluster_external_logs_id"     {value = "${aws_s3_bucket.ecs_cluster_external_alb_logs.id}"}
output "s3_bucket_alb_ecs_cluster_external_logs_arn"    {value = "${aws_s3_bucket.ecs_cluster_external_alb_logs.arn}"}
output "s3_bucket_alb_ecs_cluster_external_logs_region" {value = "${aws_s3_bucket.ecs_cluster_external_alb_logs.region}"}


resource "aws_s3_bucket" "ecs_cluster_internal_alb_logs" {
    bucket = "${data.terraform_remote_state.aws_dcs.region_name}-ec2-alb-ecs-cluster-internal-logs"
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
      "Resource": "arn:aws:s3:::${data.terraform_remote_state.aws_dcs.region_name}-ec2-alb-ecs-cluster-internal-logs/AWSLogs/${data.terraform_remote_state.aws_dcs.mc_aws_account_id}/*",
      "Principal": {
        "AWS": [
          "${data.terraform_remote_state.aws_dcs.elb_service_account_id}"
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
      Name = "${data.terraform_remote_state.aws_dcs.region_name}-ec2-alb-ecs-cluster-internal-logs"
    }
}

output "s3_bucket_alb_ecs_cluster_internal_logs_id"     {value = "${aws_s3_bucket.ecs_cluster_internal_alb_logs.id}"}
output "s3_bucket_alb_ecs_cluster_internal_logs_arn"    {value = "${aws_s3_bucket.ecs_cluster_internal_alb_logs.arn}"}
output "s3_bucket_alb_ecs_cluster_internal_logs_region" {value = "${aws_s3_bucket.ecs_cluster_internal_alb_logs.region}"}
