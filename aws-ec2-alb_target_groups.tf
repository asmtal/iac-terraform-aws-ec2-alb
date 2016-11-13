resource "aws_alb_target_group" "ecs_cluster_nginx_http" {
  name      = "ecs_cluster_nginx_http"
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
    Name = "ecs-cluster-external-alb-target-group-nginx-http"
  }
}

output "alb_target_group_ecs_cluster_nginx_http_id"         {value = "${aws_alb_target_group.ecs_cluster_nginx_http.id}"}
output "alb_target_group_ecs_cluster_nginx_http_arn"        {value = "${aws_alb_target_group.ecs_cluster_nginx_http.arn}"}
output "alb_target_group_ecs_cluster_nginx_http_arn_suffix" {value = "${aws_alb_target_group.ecs_cluster_nginx_http.arn_suffix}"}

resource "aws_alb_target_group" "ecs_cluster_nginx_https" {
  name      = "ecs_cluster_nginx_https"
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
    Name = "ecs-cluster-external-alb-target-group-nginx-https"
  }
}

output "alb_target_group_ecs_cluster_nginx_https_id"         {value = "${aws_alb_target_group.ecs_cluster_nginx_https.id}"}
output "alb_target_group_ecs_cluster_nginx_https_arn"        {value = "${aws_alb_target_group.ecs_cluster_nginx_https.arn}"}
output "alb_target_group_ecs_cluster_nginx_https_arn_suffix" {value = "${aws_alb_target_group.ecs_cluster_nginx_https.arn_suffix}"}
