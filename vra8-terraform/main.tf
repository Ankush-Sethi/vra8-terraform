terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.1.0"
    }
  }
}

resource "random_string" "random" {
  length           = 8
  special          = false
  override_special = "/@£$"
}

output "random-uuid" {
  value = uuid()
}

output "random-string" {
  value = random_string.random.id
}
