variable "cloudflare_email" {}
variable "cloudflare_token" {}

provider "cloudflare" {
  email = "${var.cloudflare_email}"
  token = "${var.cloudflare_token}"
}

resource "cloudflare_record" "foobar" {
  domain = "ddenov.tk"
  name   = "notes.ddenov.tk"
  value  = "3.218.36.59"
  type   = "A"
  ttl    = 3600
}

resource "cloudflare_record" "foobar2" {
  domain = "ddenov.tk"
  name   = "files.ddenov.tk"
  value  = "3.218.36.59"
  type   = "A"
  ttl    = 3600
}
