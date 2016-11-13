resource "aws_security_group_rule" "ecs_cluster_external_alb_http_80_ingress" {
  security_group_id = "${aws_security_group.ecs_cluster_external_alb.id}"
  type        = "ingress"
  protocol    = "tcp"
  from_port   = "80"
  to_port     = "80"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "ecs_cluster_external_alb_http_80_egress" {
  security_group_id	= "${aws_security_group.ecs_cluster_external_alb.id}"
  type        = "egress"
  protocol    = "tcp"
  from_port   = "0"
  to_port     = "65535"
  cidr_blocks = ["0.0.0.0/0"]
}
