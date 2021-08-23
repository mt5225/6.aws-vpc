variable "region" {
  description = "AWS region"
  default     = "us-west-2"
  type        = string
}

variable "environment" {
  description = "environment name"
  default     = "dev"
  type        = string
}

variable "name" {
  description = "name"
  default     = "demo"
  type        = string
}

variable "subnets" {
  type = map(any)
  default = {
    public_subnets   = ["10.58.0.0/24", "10.58.1.0/24", "10.58.2.0/24"],
    private_subnets  = ["10.58.10.0/24", "10.58.11.0/24", "10.58.12.0/24"],
    database_subnets = ["10.58.20.0/24", "10.58.21.0/24", "10.58.22.0/24"],
  }
}

variable "cidr" {
  type    = string
  default = "10.58.0.0/16"
}
