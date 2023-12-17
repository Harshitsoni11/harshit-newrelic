variable "loop" {
    type = map(any)
    default = {
    harshitcondition1 = {
    description          = "Create a first condition"
    runbook_url          = "https://docs.newrelic.com/docs/infrastructure/new-relic-infrastructure/troubleshooting/incorrect-data-reported/"
    nrql_query           = "SELECT average(cpuPercent) FROM SystemSample"
    operator    = "above"
    critical_threshold   = 25
    critical_duration    = 300
    warning_threshold    = 20
    warning_duration     = 600
  },
   harshitcondition2 = {
    description          = "Create a second condition"
    runbook_url          = "https://docs.newrelic.com/docs/infrastructure/new-relic-infrastructure/troubleshooting/incorrect-data-reported/"
    nrql_query           = "SELECT average(diskUsedPercent) FROM StorageSample"
    operator    = "above"
    critical_threshold   = 44
    critical_duration    = 300
    warning_threshold    = 43
    warning_duration     = 600
  },
    }
  
}