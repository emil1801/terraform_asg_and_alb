variable "desired_capacity" {
    default    = 3
}
variable "max_size" {
    default    = 5
}

variable "min_size" {
    default    = 1
}
        
        
variable "instance_type" {
    default    = "c5.large"
}
variable "region" {
    default             = "us-east-1"
}

variable cidr_block {}
variable public_cidr1 {}
variable public_cidr2 {}
variable public_cidr3 {}


variable tags {
    type = map
}   