output "powerbi_embeddeds" {
  description = "All powerbi_embedded resources"
  value       = azurerm_powerbi_embedded.powerbi_embeddeds
}
output "powerbi_embeddeds_administrators" {
  description = "List of administrators values across all powerbi_embeddeds"
  value       = [for k, v in azurerm_powerbi_embedded.powerbi_embeddeds : v.administrators]
}
output "powerbi_embeddeds_location" {
  description = "List of location values across all powerbi_embeddeds"
  value       = [for k, v in azurerm_powerbi_embedded.powerbi_embeddeds : v.location]
}
output "powerbi_embeddeds_mode" {
  description = "List of mode values across all powerbi_embeddeds"
  value       = [for k, v in azurerm_powerbi_embedded.powerbi_embeddeds : v.mode]
}
output "powerbi_embeddeds_name" {
  description = "List of name values across all powerbi_embeddeds"
  value       = [for k, v in azurerm_powerbi_embedded.powerbi_embeddeds : v.name]
}
output "powerbi_embeddeds_resource_group_name" {
  description = "List of resource_group_name values across all powerbi_embeddeds"
  value       = [for k, v in azurerm_powerbi_embedded.powerbi_embeddeds : v.resource_group_name]
}
output "powerbi_embeddeds_sku_name" {
  description = "List of sku_name values across all powerbi_embeddeds"
  value       = [for k, v in azurerm_powerbi_embedded.powerbi_embeddeds : v.sku_name]
}
output "powerbi_embeddeds_tags" {
  description = "List of tags values across all powerbi_embeddeds"
  value       = [for k, v in azurerm_powerbi_embedded.powerbi_embeddeds : v.tags]
}

