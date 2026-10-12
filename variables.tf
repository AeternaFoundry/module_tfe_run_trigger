variable "run_triggers" {
  description = <<EOT
Map of run_triggers, attributes below
Required:
    - sourceable_id
    - workspace_id
EOT

  type = map(object({
    sourceable_id = string
    workspace_id  = string
  }))
}

