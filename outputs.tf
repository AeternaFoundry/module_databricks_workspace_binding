output "workspace_bindings_id" {
  description = "Map of id values across all workspace_bindings, keyed the same as var.workspace_bindings except keys with no id are omitted"
  value       = { for k, v in databricks_workspace_binding.workspace_bindings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workspace_bindings_binding_type" {
  description = "Map of binding_type values across all workspace_bindings, keyed the same as var.workspace_bindings except keys with no binding_type are omitted"
  value       = { for k, v in databricks_workspace_binding.workspace_bindings : k => v.binding_type if v.binding_type != null && length(v.binding_type) > 0 }
}
output "workspace_bindings_catalog_name" {
  description = "Map of catalog_name values across all workspace_bindings, keyed the same as var.workspace_bindings except keys with no catalog_name are omitted"
  value       = { for k, v in databricks_workspace_binding.workspace_bindings : k => v.catalog_name if v.catalog_name != null && length(v.catalog_name) > 0 }
}
output "workspace_bindings_provider_config" {
  description = "Map of provider_config values across all workspace_bindings, keyed the same as var.workspace_bindings except keys with no provider_config are omitted"
  value       = { for k, v in databricks_workspace_binding.workspace_bindings : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "workspace_bindings_securable_name" {
  description = "Map of securable_name values across all workspace_bindings, keyed the same as var.workspace_bindings except keys with no securable_name are omitted"
  value       = { for k, v in databricks_workspace_binding.workspace_bindings : k => v.securable_name if v.securable_name != null && length(v.securable_name) > 0 }
}
output "workspace_bindings_securable_type" {
  description = "Map of securable_type values across all workspace_bindings, keyed the same as var.workspace_bindings except keys with no securable_type are omitted"
  value       = { for k, v in databricks_workspace_binding.workspace_bindings : k => v.securable_type if v.securable_type != null && length(v.securable_type) > 0 }
}
output "workspace_bindings_workspace_id" {
  description = "Map of workspace_id values across all workspace_bindings, keyed the same as var.workspace_bindings except keys with no workspace_id are omitted"
  value       = { for k, v in databricks_workspace_binding.workspace_bindings : k => v.workspace_id if v.workspace_id != null }
}

