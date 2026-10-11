data "aws_prefix_list" "prefix_list_lookup" {
  for_each = var.prefix_list_lookup

  name           = each.value.name
  prefix_list_id = each.value.prefix_list_id
  region         = each.value.region

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

