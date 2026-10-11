output "jms_java_families_lookup_id" {
  description = "Map of id values across all jms_java_families_lookup, keyed the same as var.jms_java_families_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_jms_java_families.jms_java_families_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "jms_java_families_lookup_display_name" {
  description = "Map of display_name values across all jms_java_families_lookup, keyed the same as var.jms_java_families_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_jms_java_families.jms_java_families_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "jms_java_families_lookup_family_version" {
  description = "Map of family_version values across all jms_java_families_lookup, keyed the same as var.jms_java_families_lookup except keys with no family_version are omitted"
  value       = { for k, v in data.oci_jms_java_families.jms_java_families_lookup : k => v.family_version if v.family_version != null && length(v.family_version) > 0 }
}
output "jms_java_families_lookup_filter" {
  description = "Map of filter values across all jms_java_families_lookup, keyed the same as var.jms_java_families_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_jms_java_families.jms_java_families_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "jms_java_families_lookup_is_supported_version" {
  description = "Map of is_supported_version values across all jms_java_families_lookup, keyed the same as var.jms_java_families_lookup except keys with no is_supported_version are omitted"
  value       = { for k, v in data.oci_jms_java_families.jms_java_families_lookup : k => v.is_supported_version if v.is_supported_version != null }
}
output "jms_java_families_lookup_java_family_collection" {
  description = "Map of java_family_collection values across all jms_java_families_lookup, keyed the same as var.jms_java_families_lookup except keys with no java_family_collection are omitted"
  value       = { for k, v in data.oci_jms_java_families.jms_java_families_lookup : k => v.java_family_collection if v.java_family_collection != null && length(v.java_family_collection) > 0 }
}

