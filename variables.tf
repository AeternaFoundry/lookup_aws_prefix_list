variable "prefix_list_lookup" {
  description = <<EOT
Map of prefix_list_lookup, attributes below
Optional:
    - name
    - prefix_list_id
    - region
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    name           = optional(string)
    prefix_list_id = optional(string)
    region         = optional(string)
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
}

