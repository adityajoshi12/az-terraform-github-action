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
