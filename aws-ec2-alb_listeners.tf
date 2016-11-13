resource "aws_alb_listener" "ecs_cluster_nginx_http" {
  port      = "80"
  protocol  = "HTTP"
  load_balancer_arn = "${aws_alb.ecs_cluster_external.arn}"

  default_action {
    type              = "forward"
    target_group_arn  = "${aws_alb_target_group.ecs_cluster_nginx_http.arn}"
  }
}

output "alb_listener_ecs_cluster_nginx_http_id"   {value = "${aws_alb_listener.ecs_cluster_nginx_http.id}"}
output "alb_listener_ecs_cluster_nginx_http_arn"  {value = "${aws_alb_listener.ecs_cluster_nginx_http.arn}"}

resource "aws_alb_listener" "ecs_cluster_nginx_https" {
  port      = "443"
  protocol  = "HTTPS"
  load_balancer_arn = "${aws_alb.ecs_cluster_external.arn}"

  default_action {
    type              = "forward"
    target_group_arn  = "${aws_alb_target_group.ecs_cluster_nginx_https.arn}"
  }
}

output "alb_listener_ecs_cluster_nginx_https_id"   {value = "${aws_alb_listener.ecs_cluster_nginx_https.id}"}
output "alb_listener_ecs_cluster_nginx_https_arn"  {value = "${aws_alb_listener.ecs_cluster_nginx_https.arn}"}
