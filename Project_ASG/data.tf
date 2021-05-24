data "aws_availability_zones" "available" {
	state = "available"
}

#data "aws_lb_target_group" "project" {	default = ""}