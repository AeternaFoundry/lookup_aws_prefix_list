output "prefix_list_lookup_id" {
  description = "Map of id values across all prefix_list_lookup, keyed the same as var.prefix_list_lookup"
  value       = { for k, v in data.aws_prefix_list.prefix_list_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "prefix_list_lookup_cidr_blocks" {
  description = "Map of cidr_blocks values across all prefix_list_lookup, keyed the same as var.prefix_list_lookup"
  value       = { for k, v in data.aws_prefix_list.prefix_list_lookup : k => v.cidr_blocks if v.cidr_blocks != null && length(v.cidr_blocks) > 0 }
}
output "prefix_list_lookup_filter" {
  description = "Map of filter values across all prefix_list_lookup, keyed the same as var.prefix_list_lookup"
  value       = { for k, v in data.aws_prefix_list.prefix_list_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "prefix_list_lookup_name" {
  description = "Map of name values across all prefix_list_lookup, keyed the same as var.prefix_list_lookup"
  value       = { for k, v in data.aws_prefix_list.prefix_list_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "prefix_list_lookup_prefix_list_id" {
  description = "Map of prefix_list_id values across all prefix_list_lookup, keyed the same as var.prefix_list_lookup"
  value       = { for k, v in data.aws_prefix_list.prefix_list_lookup : k => v.prefix_list_id if v.prefix_list_id != null && length(v.prefix_list_id) > 0 }
}
output "prefix_list_lookup_region" {
  description = "Map of region values across all prefix_list_lookup, keyed the same as var.prefix_list_lookup"
  value       = { for k, v in data.aws_prefix_list.prefix_list_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

