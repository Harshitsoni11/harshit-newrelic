resource "newrelic_one_dashboard" "dashboard" {
  name        = "Harshit_Dashboard"
  permissions = "public_read_only"
  page {
    name = "Dashboard Terraform"

    widget_billboard {
      title  = "Average CPU Percent"
      row    = 1
      column = 1
      width  = 6
      height = 3

      nrql_query {
        query = "SELECT average(cpuPercent) FROM SystemSample"
      }
  }

   widget_bar {
      title  = "Average diskFreePercent"
      row    = 1
      column = 7
      width  = 6
      height = 3

      nrql_query {
        account_id = 4268472
        query      = "SELECT average(diskFreePercent) FROM StorageSample FACET diskUsedBytes"
      }
  }

     widget_pie {
      title  = "Average diskFreePercent"
      row    = 2
      column = 1
      width  = 6
      height = 3

      nrql_query {
        account_id = 4268472
        query      = "SELECT average(diskFreePercent) FROM StorageSample FACET diskUsedBytes"
      }
  }

     widget_area {
      title  = "Average CPU User Percent"
      row    = 2
      column = 7
      width  = 6
      height = 3

      nrql_query {
        account_id = 4268472
        query      = "SELECT average(cpuUserPercent) FROM SystemSample TIMESERIES"
      }
  }
  }
}