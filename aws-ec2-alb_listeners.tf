resource "aws_alb_listener" "ecs_cluster_external_alb_http_80" {
  port      = "80"
  protocol  = "HTTP"
  load_balancer_arn = "${aws_alb.ecs_cluster_external.arn}"

  default_action {
    type              = "forward"
    target_group_arn  = "${aws_alb_target_group.ecs_cluster_external_alb_http_80.arn}"
  }
}

output "alb_ecs_cluster_external_listener_http_80_id"   {value = "${aws_alb_listener.ecs_cluster_external_alb_http_80.id}"}
output "alb_ecs_cluster_external_listener_http_80_arn"  {value = "${aws_alb_listener.ecs_cluster_external_alb_http_80.arn}"}


resource "aws_alb_listener" "ecs_cluster_external_alb_https_443" {
  port      = "443"
  protocol  = "HTTPS"
  load_balancer_arn = "${aws_alb.ecs_cluster_external.arn}"

  default_action {
    type              = "forward"
    target_group_arn  = "${aws_alb_target_group.ecs_cluster_https_443.arn}"
  }
}

output "alb_ecs_cluster_external_listener_https_443_id"   {value = "${aws_alb_listener.ecs_cluster_external_alb_https_443.id}"}
output "alb_ecs_cluster_external_listener_https_443_arn"  {value = "${aws_alb_listener.ecs_cluster_external_alb_https_443.arn}"}
