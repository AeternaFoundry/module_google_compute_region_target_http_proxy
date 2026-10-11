variable "compute_region_target_http_proxies" {
  description = <<EOT
Map of compute_region_target_http_proxies, attributes below
Required:
    - name
    - url_map
Optional:
    - deletion_policy
    - description
    - http_keep_alive_timeout_sec
    - project
    - region
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name                        = string
    url_map                     = string
    deletion_policy             = optional(string)
    description                 = optional(string)
    http_keep_alive_timeout_sec = optional(number)
    project                     = optional(string)
    region                      = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

