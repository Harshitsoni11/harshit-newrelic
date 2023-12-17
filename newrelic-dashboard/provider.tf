terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}
 

provider "newrelic" {
  account_id = 4268472
  api_key = "NRAK-6BPQ0BKYX42S9CH9Z3KTN21ABDO"   
  region = "EU"                    
}