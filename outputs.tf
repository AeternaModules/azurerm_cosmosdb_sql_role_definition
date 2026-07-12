output "cosmosdb_sql_role_definitions_account_name" {
  description = "Map of account_name values across all cosmosdb_sql_role_definitions, keyed the same as var.cosmosdb_sql_role_definitions"
  value       = { for k, v in azurerm_cosmosdb_sql_role_definition.cosmosdb_sql_role_definitions : k => v.account_name }
}
output "cosmosdb_sql_role_definitions_assignable_scopes" {
  description = "Map of assignable_scopes values across all cosmosdb_sql_role_definitions, keyed the same as var.cosmosdb_sql_role_definitions"
  value       = { for k, v in azurerm_cosmosdb_sql_role_definition.cosmosdb_sql_role_definitions : k => v.assignable_scopes }
}
output "cosmosdb_sql_role_definitions_name" {
  description = "Map of name values across all cosmosdb_sql_role_definitions, keyed the same as var.cosmosdb_sql_role_definitions"
  value       = { for k, v in azurerm_cosmosdb_sql_role_definition.cosmosdb_sql_role_definitions : k => v.name }
}
output "cosmosdb_sql_role_definitions_permissions" {
  description = "Map of permissions values across all cosmosdb_sql_role_definitions, keyed the same as var.cosmosdb_sql_role_definitions"
  value       = { for k, v in azurerm_cosmosdb_sql_role_definition.cosmosdb_sql_role_definitions : k => v.permissions }
}
output "cosmosdb_sql_role_definitions_resource_group_name" {
  description = "Map of resource_group_name values across all cosmosdb_sql_role_definitions, keyed the same as var.cosmosdb_sql_role_definitions"
  value       = { for k, v in azurerm_cosmosdb_sql_role_definition.cosmosdb_sql_role_definitions : k => v.resource_group_name }
}
output "cosmosdb_sql_role_definitions_role_definition_id" {
  description = "Map of role_definition_id values across all cosmosdb_sql_role_definitions, keyed the same as var.cosmosdb_sql_role_definitions"
  value       = { for k, v in azurerm_cosmosdb_sql_role_definition.cosmosdb_sql_role_definitions : k => v.role_definition_id }
}
output "cosmosdb_sql_role_definitions_type" {
  description = "Map of type values across all cosmosdb_sql_role_definitions, keyed the same as var.cosmosdb_sql_role_definitions"
  value       = { for k, v in azurerm_cosmosdb_sql_role_definition.cosmosdb_sql_role_definitions : k => v.type }
}

