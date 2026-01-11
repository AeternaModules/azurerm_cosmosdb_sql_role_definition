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
    type                = optional(string, "CustomRole")
    permissions = object({
      data_actions = set(string)
    })
  }))
}

