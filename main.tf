provider cloudflare { 
  email = "${var.cloudflare_email}" 
  token = "${var.cloudflare_token}" 
  api_client_logging = true 
  org_id = "${var.cloudflare_org_id}" 
} 
