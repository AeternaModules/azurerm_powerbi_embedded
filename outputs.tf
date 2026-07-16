output "powerbi_embeddeds_id" {
  description = "Map of id values across all powerbi_embeddeds, keyed the same as var.powerbi_embeddeds"
  value       = { for k, v in azurerm_powerbi_embedded.powerbi_embeddeds : k => v.id if v.id != null && length(v.id) > 0 }
}
output "powerbi_embeddeds_administrators" {
  description = "Map of administrators values across all powerbi_embeddeds, keyed the same as var.powerbi_embeddeds"
  value       = { for k, v in azurerm_powerbi_embedded.powerbi_embeddeds : k => v.administrators if v.administrators != null && length(v.administrators) > 0 }
}
output "powerbi_embeddeds_location" {
  description = "Map of location values across all powerbi_embeddeds, keyed the same as var.powerbi_embeddeds"
  value       = { for k, v in azurerm_powerbi_embedded.powerbi_embeddeds : k => v.location if v.location != null && length(v.location) > 0 }
}
output "powerbi_embeddeds_mode" {
  description = "Map of mode values across all powerbi_embeddeds, keyed the same as var.powerbi_embeddeds"
  value       = { for k, v in azurerm_powerbi_embedded.powerbi_embeddeds : k => v.mode if v.mode != null && length(v.mode) > 0 }
}
output "powerbi_embeddeds_name" {
  description = "Map of name values across all powerbi_embeddeds, keyed the same as var.powerbi_embeddeds"
  value       = { for k, v in azurerm_powerbi_embedded.powerbi_embeddeds : k => v.name if v.name != null && length(v.name) > 0 }
}
output "powerbi_embeddeds_resource_group_name" {
  description = "Map of resource_group_name values across all powerbi_embeddeds, keyed the same as var.powerbi_embeddeds"
  value       = { for k, v in azurerm_powerbi_embedded.powerbi_embeddeds : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "powerbi_embeddeds_sku_name" {
  description = "Map of sku_name values across all powerbi_embeddeds, keyed the same as var.powerbi_embeddeds"
  value       = { for k, v in azurerm_powerbi_embedded.powerbi_embeddeds : k => v.sku_name if v.sku_name != null && length(v.sku_name) > 0 }
}
output "powerbi_embeddeds_tags" {
  description = "Map of tags values across all powerbi_embeddeds, keyed the same as var.powerbi_embeddeds"
  value       = { for k, v in azurerm_powerbi_embedded.powerbi_embeddeds : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

