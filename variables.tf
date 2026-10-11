variable "workspace_bindings" {
  description = <<EOT
Map of workspace_bindings, attributes below
Required:
    - workspace_id
Optional:
    - binding_type
    - catalog_name
    - securable_name
    - securable_type
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    workspace_id   = number
    binding_type   = optional(string)
    catalog_name   = optional(string)
    securable_name = optional(string)
    securable_type = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

