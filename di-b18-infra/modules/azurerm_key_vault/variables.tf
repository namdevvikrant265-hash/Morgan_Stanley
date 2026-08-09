variable "key_vaults" {
  description = "Key Vault configuration"
  type = map(object({
    name        = string
    location    = string
    rg_name     = string
    secret_name = string
  }))
}

variable "admin_password" {
  description = "Administrator password stored in Key Vault"
  type        = string
  sensitive   = true
}