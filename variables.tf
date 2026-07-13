variable "powerbi_embeddeds" {
  description = <<EOT
Map of powerbi_embeddeds, attributes below
Required:
    - administrators
    - location
    - name
    - resource_group_name
    - sku_name
Optional:
    - mode
    - tags
EOT

  type = map(object({
    administrators      = set(string)
    location            = string
    name                = string
    resource_group_name = string
    sku_name            = string
    mode                = optional(string)
    tags                = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.powerbi_embeddeds : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.powerbi_embeddeds : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.powerbi_embeddeds : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.powerbi_embeddeds : (
        contains(["A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8"], v.sku_name)
      )
    ])
    error_message = "must be one of: A1, A2, A3, A4, A5, A6, A7, A8"
  }
  validation {
    condition = alltrue([
      for k, v in var.powerbi_embeddeds : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

