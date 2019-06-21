variable "cloudflare_email" {}
variable "cloudflare_token" {}
variable "cloudflare_zone" {}

provider "cloudflare" {
  email = "${var.cloudflare_email}"
  token = "${var.cloudflare_token}"
}

resource "cloudflare_record" "foobar" {
  domain = "${var.cloudflare_zone}"
  name   = "ddenov.tk/notes"
  value  = "3.218.36.59"
  type   = "SRV"
  ttl    = 3600
  
  data = {
    port     = 3000
    target   = "ddenov.tk/notes"
  }
}
