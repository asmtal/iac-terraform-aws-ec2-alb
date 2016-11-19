resource "aws_alb_listener" "external_http_80" {
  port      = "80"
  protocol  = "HTTP"
  load_balancer_arn = "${aws_alb.external.arn}"

  default_action {
    type              = "forward"
    target_group_arn  = "${aws_alb_target_group.external_http_80.arn}"
  }
}

output "listener_external_listener_http_80_id"   {value = "${aws_alb_listener.external_http_80.id}"}
output "listener_external_listener_http_80_arn"  {value = "${aws_alb_listener.external_http_80.arn}"}
