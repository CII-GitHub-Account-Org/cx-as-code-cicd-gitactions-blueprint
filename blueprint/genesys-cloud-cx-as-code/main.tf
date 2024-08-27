

terraform {

  backend "remote" {
    organization = "cii-dev-organization"

    workspaces {
      prefix = "genesys_email_"
    }
  }

  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
    }
  }
}

provider "genesyscloud" {
  sdk_debug = true
}