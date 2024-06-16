variable "vpc_cidr" {
  type        = string
  description = "public subnet cidr values"
  default     = "10.0.0.0/16"
}

variable "cidr_public_subnet" {
  type        = list(string)
  description = "public subnet cidr values"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]

}

variable "cidr_private_subnet" {
  type        = list(string)
  description = "private subnet cidr values"
  default     = ["10.0.3.0/24", "10.0.4.0/24"]

}

variable "ap-southeast-1_zone" {
  type        = list(string)
  description = "availability zones"
  default     = ["ap-southeast-1a", "ap-southeast-1b"]
}