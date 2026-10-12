output "run_triggers_id" {
  description = "Map of id values across all run_triggers, keyed the same as var.run_triggers except keys with no id are omitted"
  value       = { for k, v in tfe_run_trigger.run_triggers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "run_triggers_sourceable_id" {
  description = "Map of sourceable_id values across all run_triggers, keyed the same as var.run_triggers except keys with no sourceable_id are omitted"
  value       = { for k, v in tfe_run_trigger.run_triggers : k => v.sourceable_id if v.sourceable_id != null && length(v.sourceable_id) > 0 }
}
output "run_triggers_workspace_id" {
  description = "Map of workspace_id values across all run_triggers, keyed the same as var.run_triggers except keys with no workspace_id are omitted"
  value       = { for k, v in tfe_run_trigger.run_triggers : k => v.workspace_id if v.workspace_id != null && length(v.workspace_id) > 0 }
}

