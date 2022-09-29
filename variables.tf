variable "aws_region" {
    description = "AWS Region"
    default     = "us-east-1"
    type        = string
  
}
variable "ami_name" {}
variable "ami_id" {
    type        = map
    default     = {
        "us-east-1" = "ami-08c40ec9ead489470"
        "us-east-2" = "ami-097a2df4ac947655f"
    }
}
variable "ami_key_pair_name" {}

variable "secret_key" {
    type = string
      default = "var.secret.value"

}
variable "access_key" {
    type = string
      default = "var.access.value"
}