variable "aws_region" {
    description = "AWS region to deploy into"
    type = string
}

variable "ami_id" {
    description = "AMI ID to use for EC2 instance"
    type = string
}

variable "instance_type" {
    description = "EC2 instance type"
    type  = string
}

variable "key_name" {
    description = "key pair name for SSH access"
    type = string

}