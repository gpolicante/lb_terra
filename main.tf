
resource "aws_lb" "loadbalancer" { 

name = var.lbname

internal = var.internal

load_balancer_type = var.lbtype

security_groups = var.lbsg

subnets = var.lbsubnet


}

resource "aws_lb_target_group" "group_instance" {
  name     = var.nametargetgroup
  port     = var.portlb
  protocol = var.protocol
  vpc_id   = var.vpcid
  target_type = var.target_type
}

resource "aws_lb_target_group_attachment" "attach_instance" {
  count = length(var.instanceid)
  target_group_arn = aws_lb_target_group.group_instance.arn
  target_id        =  var.instanceid[count.index]
  port             = var.portinstance
}