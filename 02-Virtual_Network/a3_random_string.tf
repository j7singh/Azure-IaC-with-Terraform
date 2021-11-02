# Random String Resource

resource "random_string" "random-1" {
  length  = 5
  upper   = false
  special = false
  number  = false
}

