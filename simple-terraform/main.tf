terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.1.0"
    }
  }
  backend "remote" {
    hostname = "backend.api.env0.com"
    organization = "bde19c6d-d0dc-4b11-a951-8f43fe49db92.6de20c9c-e5a2-49a3-aee5-00c03204ec3a"

    workspaces {
      name = "randomstringgreenfieldev"
    }
  }
}

variable "refresh_date" {
  type = string
  default = "00/00/0000"
}

resource "random_string" "random" {
  keepers = {
      refresh_date = var.refresh_date
  }
  length           = 5
  upper            = true
  special          = false
}

output "random_string" {
    value = random_string.random.result
}
