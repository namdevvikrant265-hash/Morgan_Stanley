output "rg_ids" {
  description = "Map of created resource group IDs keyed by the Terraform for_each name."
  value       = { for k, v in azurerm_resource_group.resource_group : k => v.id }
}
