module "ASG" {
    source             = "../"
    desired_capacity   = 2
    max_size           = 2
    min_size           = 2
    instance_type      = "c5.large"
    region             = "us-east-1"
    cidr_block         = "10.0.0.0/16"
    public_cidr1       = "10.0.101.0/24"
    public_cidr2       = "10.0.102.0/24"
    public_cidr3       = "10.0.103.0/24"
                
    tags = {
    Name = "ASG"
                    
    }
}