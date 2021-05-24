resource "aws_autoscaling_group" "project" {
vpc_zone_identifier = [aws_subnet.public_subnet1.id, aws_subnet.public_subnet2.id]
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size

mixed_instances_policy {
    instances_distribution {
      on_demand_base_capacity                  = 0
      on_demand_percentage_above_base_capacity = 25
      spot_allocation_strategy                 = "capacity-optimized"
    }
  

  launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.project.id
      }
      
    }
  }
}




