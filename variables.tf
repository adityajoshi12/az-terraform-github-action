variable "rg_name" {
  type = string
  default = "myrg"
}
variable "rg_region" {
  type = string
  default = "westus"
}
variable "my-tags" {
  type = map(string)
  default = {
    "env" = "dev"
  }
}

variable "subscription_id" {
  type = string
}
variable "client_id" {
  type = string
}
variable "client_secret" {
  type = string
}
variable "tenant_id" {
  type = string
}
