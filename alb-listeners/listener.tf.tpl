resource "aws_alb_listener" "http_80_public" {
  port      = "80"
  protocol  = "HTTP"
  load_balancer_arn = "${aws_alb.external.arn}"

  default_action {
    type              = "forward"
    target_group_arn  = "${aws_alb_target_group.ecs_cluster-lep_stack.arn}"
  }
}
  output "alb_listener-http_80_public-id" {
    value = "${aws_alb_listener.http_80_public.id}"
  }

  output "alb_listener-http_80_public-arn" {
    value = "${aws_alb_listener.http_80_public.arn}"
  }

/*
resource "aws_alb_listener" "phpfpm_9000_private" {
  port      = "9000"
  protocol  = "HTTP"
  load_balancer_arn = "${aws_alb.internal.arn}"

  default_action {
    type              = "forward"
    target_group_arn  = "${aws_alb_target_group.ecs-cluster-phpfpm.arn}"
  }
}
  output "alb_listener-phpfpm_9000_private-id" {
    value = "${aws_alb_listener.phpfpm_9000_private.id}"
  }

  output "alb_listener-phpfpm_9000_private-arn" {
    value = "${aws_alb_listener.phpfpm_9000_private.arn}"
  }
*/
