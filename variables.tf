variable "cosmosdb_sql_role_definitions" {
  description = <<EOT
Map of cosmosdb_sql_role_definitions, attributes below
Required:
    - account_name
    - assignable_scopes
    - name
    - resource_group_name
    - permissions (block):
        - data_actions (required)
Optional:
    - role_definition_id
    - type
EOT

  type = map(object({
    account_name        = string
    assignable_scopes   = set(string)
    name                = string
    resource_group_name = string
    role_definition_id  = optional(string)
    type                = optional(string) # Default: "CustomRole"
    permissions = object({
      data_actions = set(string)
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_sql_role_definitions : (
        v.role_definition_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.role_definition_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_sql_role_definitions : (
        length(v.assignable_scopes) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_sql_role_definitions : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_sql_role_definitions : (
        length(v.permissions.data_actions) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_cosmosdb_sql_role_definition's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
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
  # path: account_name
  #   source:    [from validate.CosmosAccountName] !matched
  # path: type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

