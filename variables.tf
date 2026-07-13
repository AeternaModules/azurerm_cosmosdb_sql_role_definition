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
    type                = optional(string)
    permissions = list(object({
      data_actions = set(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_sql_role_definitions : (
        length(v.permissions) >= 1
      )
    ])
    error_message = "Each permissions list must contain at least 1 items"
  }
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
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_sql_role_definitions : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_sql_role_definitions : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_sql_role_definitions : (
        alltrue([for x in v.assignable_scopes : length(x) > 0])
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
        alltrue([for item in v.permissions : (alltrue([for x in item.data_actions : length(x) > 0]))])
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

