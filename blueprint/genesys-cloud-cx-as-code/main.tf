

terraform {

  backend "remote" {
    organization = "thoughtmechanix"

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