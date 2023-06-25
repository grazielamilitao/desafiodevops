# arquivo de variaveis da automacao do ec2
variable "aws_region" {

  type        = string
  description = ""
  default     = "us-east-1"

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

