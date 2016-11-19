resource "aws_alb_target_group" "external_http_80" {
  name      = "${data.terraform_remote_state.project.name}-external-http-80"
  port      = 80
  protocol  = "HTTP"
  deregistration_delay = 300

  vpc_id  = "${data.terraform_remote_state.aws_vpc.vpc_id}"

  health_check {
    port                = "traffic-port"
    protocol            = "HTTP"

    matcher             = 200
    path                = "/"

    timeout             = 2
    interval            = 5
    healthy_threshold   = 5
    unhealthy_threshold = 2
  }

  tags {
    Name = "${data.terraform_remote_state.project.name}-external-http-80"
  }
}

output "target_group_external_http_80_id"         {value = "${aws_alb_target_group.external_http_80.id}"}
output "target_group_external_http_80_arn"        {value = "${aws_alb_target_group.external_http_80.arn}"}
output "target_group_external_http_80_arn_suffix" {value = "${aws_alb_target_group.external_http_80.arn_suffix}"}


// resource "aws_alb_target_group" "ecs_cluster_external_alb_https_443" {
//   name      = "ecs-cluster-ext-alb-https-443"
//   port      = 443
//   protocol  = "HTTPS"
//   deregistration_delay = 300
//
//   vpc_id  = "${data.terraform_remote_state.aws_vpc.ecs_cluster_vpc_id}"
//
//   health_check {
//     port                = "traffic-port"
//     protocol            = "HTTPS"
//
//     matcher             = 200
//     path                = "/"
//
//     timeout             = 2
//     interval            = 5
//     healthy_threshold   = 5
//     unhealthy_threshold = 2
//   }
//
//   tags {
//     Name = "ecs-cluster-ext-alb-https-443"
//   }
// }
//
// output "target_group_external_target_group_https_443_id"         {value = "${aws_alb_target_group.ecs_cluster_external_alb_https_443.id}"}
// output "target_group_external_target_group_https_443_arn"        {value = "${aws_alb_target_group.ecs_cluster_external_alb_https_443.arn}"}
// output "target_group_external_target_group_https_443_arn_suffix" {value = "${aws_alb_target_group.ecs_cluster_external_alb_https_443.arn_suffix}"}
