variable "ec2_ami" {
  description = "This is a variable to manage ec2 ami type"
  type        = string
  
}

variable "ec2_instance_type" {
  description = "This is a variable to manage ec2 instance_type"
  type        = string
}

variable "ec2_keyname" {
  description = "This is a variable to manage ec2 key name"
  type        = string
}

variable "ec2_default_tags" {
  description = "This is a variable to manage ec2 default_tags"
  type        = map(any)
  default = {
    "Name" = "Assignment2"
  }
}