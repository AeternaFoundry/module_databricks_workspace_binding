resource "databricks_workspace_binding" "workspace_bindings" {
  for_each = var.workspace_bindings

  workspace_id   = each.value.workspace_id
  binding_type   = each.value.binding_type
  catalog_name   = each.value.catalog_name
  securable_name = each.value.securable_name
  securable_type = each.value.securable_type

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

