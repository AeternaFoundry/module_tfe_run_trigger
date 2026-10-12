resource "tfe_run_trigger" "run_triggers" {
  for_each = var.run_triggers

  sourceable_id = each.value.sourceable_id
  workspace_id  = each.value.workspace_id
}

