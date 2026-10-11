variable "jms_java_families_lookup" {
  description = <<EOT
Map of jms_java_families_lookup, attributes below
Optional:
    - display_name
    - family_version
    - is_supported_version
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    display_name         = optional(string)
    family_version       = optional(string)
    is_supported_version = optional(bool)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

