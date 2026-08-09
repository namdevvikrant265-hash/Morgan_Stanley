variable "rgs" {
  type    = map(any)
  default = {}
}

variable "vnets" {
  type    = map(any)
  default = {}
}

variable "subnets" {
  type    = map(any)
  default = {}
}

variable "public_ips" {
  type    = map(any)
  default = {}
}

variable "vms" {
  type    = map(any)
  default = {}
}

variable "bastions" {
  type    = map(any)
  default = {}
}

variable "app_gateways" {
  type    = map(any)
  default = {}
}

variable "load_balancers" {
  type    = map(any)
  default = {}
}

variable "key_vaults" {
  description = "Key Vault configuration"
  type = map(object({
    name        = string
    location    = string
    rg_name     = string
    secret_name = string
  }))
  default = {}
}

variable "admin_password" {
  description = "Administrator password for infrastructure secrets"
  type        = string
  sensitive   = true
  default     = "P@ssw0rd12345!"
}