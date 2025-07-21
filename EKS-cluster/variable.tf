variable "name" {
default = "demo-eks"
type = string
}
variable "cidr" {
default = "10.0.0.0/16"
type = string
}
variable "azs" {
default = ["eu-north-1a", "eu-north-1b"]
type = list(string)
}
variable "private_subnets" {
default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
type = list(string)
}
variable "public_subnets" {
default = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
type = list(string)
}
variable "env" {
default = "dev"
type = string
}
variable "intra_subnets" {
default = ["10.0.45.0/24", "10.0.46.0/24", "10.0.47.0/24"]
type = list(string)
}
