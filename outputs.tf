output "cosmosdb_sql_role_definitions" {
  description = "All cosmosdb_sql_role_definition resources"
  value       = azurerm_cosmosdb_sql_role_definition.cosmosdb_sql_role_definitions
}
output "cosmosdb_sql_role_definitions_account_name" {
  description = "List of account_name values across all cosmosdb_sql_role_definitions"
  value       = [for k, v in azurerm_cosmosdb_sql_role_definition.cosmosdb_sql_role_definitions : v.account_name]
}
output "cosmosdb_sql_role_definitions_assignable_scopes" {
  description = "List of assignable_scopes values across all cosmosdb_sql_role_definitions"
  value       = [for k, v in azurerm_cosmosdb_sql_role_definition.cosmosdb_sql_role_definitions : v.assignable_scopes]
}
output "cosmosdb_sql_role_definitions_name" {
  description = "List of name values across all cosmosdb_sql_role_definitions"
  value       = [for k, v in azurerm_cosmosdb_sql_role_definition.cosmosdb_sql_role_definitions : v.name]
}
output "cosmosdb_sql_role_definitions_permissions" {
  description = "List of permissions values across all cosmosdb_sql_role_definitions"
  value       = [for k, v in azurerm_cosmosdb_sql_role_definition.cosmosdb_sql_role_definitions : v.permissions]
}
output "cosmosdb_sql_role_definitions_resource_group_name" {
  description = "List of resource_group_name values across all cosmosdb_sql_role_definitions"
  value       = [for k, v in azurerm_cosmosdb_sql_role_definition.cosmosdb_sql_role_definitions : v.resource_group_name]
}
output "cosmosdb_sql_role_definitions_role_definition_id" {
  description = "List of role_definition_id values across all cosmosdb_sql_role_definitions"
  value       = [for k, v in azurerm_cosmosdb_sql_role_definition.cosmosdb_sql_role_definitions : v.role_definition_id]
}
output "cosmosdb_sql_role_definitions_type" {
  description = "List of type values across all cosmosdb_sql_role_definitions"
  value       = [for k, v in azurerm_cosmosdb_sql_role_definition.cosmosdb_sql_role_definitions : v.type]
}

