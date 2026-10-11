data "oci_jms_java_families" "jms_java_families_lookup" {
  for_each = var.jms_java_families_lookup

  display_name         = each.value.display_name
  family_version       = each.value.family_version
  is_supported_version = each.value.is_supported_version

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

