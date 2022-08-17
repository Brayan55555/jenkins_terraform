variable "aws_region" {
    default = "us-east-1"
}

variable "user" {
    type = "string"
    default = "user1"
}

variable "policyname" {
    type = "string"
    default = "policy_s3_listAllMyBuckets"
}