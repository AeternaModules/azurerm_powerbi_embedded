output "powerbi_embeddeds_administrators" {
  description = "Map of administrators values across all powerbi_embeddeds, keyed the same as var.powerbi_embeddeds"
  value       = { for k, v in azurerm_powerbi_embedded.powerbi_embeddeds : k => v.administrators }
}
output "powerbi_embeddeds_location" {
  description = "Map of location values across all powerbi_embeddeds, keyed the same as var.powerbi_embeddeds"
  value       = { for k, v in azurerm_powerbi_embedded.powerbi_embeddeds : k => v.location }
}
output "powerbi_embeddeds_mode" {
  description = "Map of mode values across all powerbi_embeddeds, keyed the same as var.powerbi_embeddeds"
  value       = { for k, v in azurerm_powerbi_embedded.powerbi_embeddeds : k => v.mode }
}
output "powerbi_embeddeds_name" {
  description = "Map of name values across all powerbi_embeddeds, keyed the same as var.powerbi_embeddeds"
  value       = { for k, v in azurerm_powerbi_embedded.powerbi_embeddeds : k => v.name }
}
output "powerbi_embeddeds_resource_group_name" {
  description = "Map of resource_group_name values across all powerbi_embeddeds, keyed the same as var.powerbi_embeddeds"
  value       = { for k, v in azurerm_powerbi_embedded.powerbi_embeddeds : k => v.resource_group_name }
}
output "powerbi_embeddeds_sku_name" {
  description = "Map of sku_name values across all powerbi_embeddeds, keyed the same as var.powerbi_embeddeds"
  value       = { for k, v in azurerm_powerbi_embedded.powerbi_embeddeds : k => v.sku_name }
}
output "powerbi_embeddeds_tags" {
  description = "Map of tags values across all powerbi_embeddeds, keyed the same as var.powerbi_embeddeds"
  value       = { for k, v in azurerm_powerbi_embedded.powerbi_embeddeds : k => v.tags }
}

