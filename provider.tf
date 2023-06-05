terraform {
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = ">= 1.12.0"
    }
  }
}

provider "ibm" {
  bluemix_api_key    = var.ibm_bluemix_api_key
  softlayer_username = var.ibm_softlayer_username
  softlayer_api_key  = var.ibm_softlayer_api_key
  region             = "us-east"
}
