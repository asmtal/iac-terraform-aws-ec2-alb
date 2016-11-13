resource "aws_alb_target_group" "ecs_cluster_external_alb_http_80" {
  name      = "ecs-cluster-external-alb-http-80"
  port      = 80
  protocol  = "HTTP"
  deregistration_delay = 300

  vpc_id  = "${data.terraform_remote_state.aws_vpc.ecs_cluster_vpc_id}"

  health_check {
    port                = "traffic-port"
    protocol            = "HTTP"

    matcher             = 200
    target              = "/index.php"

    timeout             = 2
    interval            = 5
    healthy_threshold   = 5
    unhealthy_threshold = 2
  }

  tags {
    Name = "ecs-cluster-external-alb-http-80"
  }
}

output "alb_ecs_cluster_external_target_group_http_80_id"         {value = "${aws_alb_target_group.ecs_cluster_external_alb_http_80.id}"}
output "alb_ecs_cluster_external_target_group_http_80_arn"        {value = "${aws_alb_target_group.ecs_cluster_external_alb_http_80.arn}"}
output "alb_ecs_cluster_external_target_group_http_80_arn_suffix" {value = "${aws_alb_target_group.ecs_cluster_external_alb_http_80.arn_suffix}"}


resource "aws_alb_target_group" "ecs_cluster_external_alb_https_443" {
  name      = "ecs-cluster-external-alb-https-443"
  port      = 443
  protocol  = "HTTPS"
  deregistration_delay = 300

  vpc_id  = "${data.terraform_remote_state.aws_vpc.ecs_cluster_vpc_id}"

  health_check {
    port                = "traffic-port"
    protocol            = "HTTPS"

    matcher             = 200
    target              = "/index.php"

    timeout             = 2
    interval            = 5
    healthy_threshold   = 5
    unhealthy_threshold = 2
  }

  tags {
    Name = "ecs-cluster-external-alb-https-443"
  }
}

output "alb_ecs_cluster_external_target_group_https_443_id"         {value = "${aws_alb_target_group.ecs_cluster_external_alb_https_443.id}"}
output "alb_ecs_cluster_external_target_group_https_443_arn"        {value = "${aws_alb_target_group.ecs_cluster_external_alb_https_443.arn}"}
output "alb_ecs_cluster_external_target_group_https_443_arn_suffix" {value = "${aws_alb_target_group.ecs_cluster_external_alb_https_443.arn_suffix}"}
