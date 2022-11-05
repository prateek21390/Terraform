resource "aws_elb" "loadbalancer1" {
  name = "elb_project"
  security_groups = [
    aws_security_group.default.id
  ]
  subnets = [
    aws_subnet.projectsubnet.id,
    aws_subnet.projectsubnet2.id
  ]
  cross_zone_load_balancing = true
  health_check {
    healthy_threshold = 2
    unhealthy_threshold = 2
    timeout = 3
    interval = 30
    target = "HTTP:80/"
  
  }
  listener {
    lb_port = 80
    lb_protocol = "http"
    instance_port = "80"
    instance_protocol = "http" 
  }
}