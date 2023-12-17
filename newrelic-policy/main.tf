resource "newrelic_alert_policy" "harshitpolicy" {
  name = "harshit-policy" 
  incident_preference = "PER_POLICY" 
}

resource "newrelic_nrql_alert_condition" "foo" {
  for_each = var.loop
  account_id                     = 4268472
  policy_id                      = newrelic_alert_policy.harshitpolicy.id
  name                           =  each.key
  description                    = each.value.description
  runbook_url                    = each.value.runbook_url

  nrql {
    query = each.value.nrql_query
  }

  critical {
    operator              = each.value.operator
    threshold             = each.value.critical_threshold
    threshold_duration    = each.value.critical_duration
    threshold_occurrences = "ALL"
  }

  warning {
    operator              = each.value.operator
    threshold             = each.value.warning_threshold
    threshold_duration    = each.value.warning_duration
    threshold_occurrences = "ALL"
  }
}