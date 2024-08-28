

terraform {

  backend "remote" {
    organization = "cii-dev-organization"

    workspaces {
      prefix = "cii-dev-genesys-cicd-deployment-"
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