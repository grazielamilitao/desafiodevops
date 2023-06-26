# arquivo de variaveis da automacao do ec2
variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"

}

variable "aws_zone" {
  type        = string
  description = ""
  default = "us-central1-c"
}

variable "aws_profile" {

  type        = string
  description = ""
  default     = "ec2-profile"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t3.micro"
}

variable "instance_key_name" {
  type        = string
  description = ""
  default     = "desafio-terraform"
}

variable "instance_ip_address" {
  type        = string
  description = ""
  default     = "ipv4"
}

variable "public_ip" {
  type        = string
  description = ""
  default     = "ipv4"
}