
variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-08c40ec9ead489470"
  }
}
