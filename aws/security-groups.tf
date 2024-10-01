resource "aws_security_group" "all_worker_mgmt" {
  name_prefix = "all_worker_mgmt"
  vpc_id      = module.vpc.vpc_id
}

# resource "aws_vpc_security_group_ingress_rule" "all_worker_mgmnt_ingress" {
#   description = "Allow all inbound traffic from the EKS"
#   security_group_id = aws_security_group.all_worker_mgmt.id
#   cidr_blocks = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"]
#   from_port         = 0
#   ip_protocol       = "-1"
#   to_port           = 0
#   type             = "ingress"

# }


resource "aws_security_group_rule" "all_worker_mgmnt_ingress" {
  description       = "Allow inbound traffic from the EKS"
  from_port         = 0
  protocol          = "-1"
  to_port           = 0
  type              = "ingress"
  security_group_id = aws_security_group.all_worker_mgmt.id
  cidr_blocks       = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"]
}


resource "aws_security_group_rule" "all_worker_mgmnt_egress" {
  description       = "Allow outbound traffic to anywhere"
  from_port         = 0
  protocol          = "-1"
  to_port           = 0
  type              = "egress"
  security_group_id = aws_security_group.all_worker_mgmt.id
  cidr_blocks       = ["0.0.0.0/0"]
}