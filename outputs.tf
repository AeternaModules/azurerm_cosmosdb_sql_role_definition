output "cosmosdb_sql_role_definitions_id" {
  description = "Map of id values across all cosmosdb_sql_role_definitions, keyed the same as var.cosmosdb_sql_role_definitions"
  value       = { for k, v in azurerm_cosmosdb_sql_role_definition.cosmosdb_sql_role_definitions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cosmosdb_sql_role_definitions_account_name" {
  description = "Map of account_name values across all cosmosdb_sql_role_definitions, keyed the same as var.cosmosdb_sql_role_definitions"
  value       = { for k, v in azurerm_cosmosdb_sql_role_definition.cosmosdb_sql_role_definitions : k => v.account_name if v.account_name != null && length(v.account_name) > 0 }
}
output "cosmosdb_sql_role_definitions_assignable_scopes" {
  description = "Map of assignable_scopes values across all cosmosdb_sql_role_definitions, keyed the same as var.cosmosdb_sql_role_definitions"
  value       = { for k, v in azurerm_cosmosdb_sql_role_definition.cosmosdb_sql_role_definitions : k => v.assignable_scopes if v.assignable_scopes != null && length(v.assignable_scopes) > 0 }
}
output "cosmosdb_sql_role_definitions_name" {
  description = "Map of name values across all cosmosdb_sql_role_definitions, keyed the same as var.cosmosdb_sql_role_definitions"
  value       = { for k, v in azurerm_cosmosdb_sql_role_definition.cosmosdb_sql_role_definitions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cosmosdb_sql_role_definitions_permissions" {
  description = "Map of permissions values across all cosmosdb_sql_role_definitions, keyed the same as var.cosmosdb_sql_role_definitions"
  value       = { for k, v in azurerm_cosmosdb_sql_role_definition.cosmosdb_sql_role_definitions : k => v.permissions if v.permissions != null && length(v.permissions) > 0 }
}
output "cosmosdb_sql_role_definitions_resource_group_name" {
  description = "Map of resource_group_name values across all cosmosdb_sql_role_definitions, keyed the same as var.cosmosdb_sql_role_definitions"
  value       = { for k, v in azurerm_cosmosdb_sql_role_definition.cosmosdb_sql_role_definitions : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "cosmosdb_sql_role_definitions_role_definition_id" {
  description = "Map of role_definition_id values across all cosmosdb_sql_role_definitions, keyed the same as var.cosmosdb_sql_role_definitions"
  value       = { for k, v in azurerm_cosmosdb_sql_role_definition.cosmosdb_sql_role_definitions : k => v.role_definition_id if v.role_definition_id != null && length(v.role_definition_id) > 0 }
}
output "cosmosdb_sql_role_definitions_type" {
  description = "Map of type values across all cosmosdb_sql_role_definitions, keyed the same as var.cosmosdb_sql_role_definitions"
  value       = { for k, v in azurerm_cosmosdb_sql_role_definition.cosmosdb_sql_role_definitions : k => v.type if v.type != null && length(v.type) > 0 }
}

