variable "flavor" {
    type = string
    default = "t2.micro"
}

variable "amis" {
    type = map
    default = {
        "ubuntu" = "ami-052efd3df9dad4825"
        "redhat" = "ami-06640050dc3f556bb"
    }
    
}