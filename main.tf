provider "cloudflare" {
  email = "${var.cloudflare_email}"
  token = "${var.cloudflare_token}"
}

resource "cloudflare_record" "foobar" {
  domain = "${var.cloudflare_zone}"
  name   = "ddenov.tk"
  value  = "3.218.36.59:3000"
  type   = "A"
  ttl    = 3600
}
