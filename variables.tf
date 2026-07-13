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
  # --- Unconfirmed validation candidates, derived from azurerm_powerbi_embedded's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.EmbeddedName] !regexp.MustCompile(`^[a-z][a-z0-9]{3,63}$`).MatchString(value)
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: sku_name
  #   condition: contains(["A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8"], value)
  #   message:   must be one of: A1, A2, A3, A4, A5, A6, A7, A8
  # path: administrators[*]
  #   source:    [from validate.EmbeddedAdministratorName] !regexp.MustCompile(`^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$`).MatchString(value)
  # path: administrators[*]
  #   source:    [from validate.EmbeddedAdministratorName] err != nil
  # path: mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

