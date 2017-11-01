module "dev" {
  source            = "../demo1"
  record_name       = "dev"
  cloudflare_domain = "${var.cloudflare_domain}"

  do_token         = "${var.do_token}"
  cloudflare_email = "${var.cloudflare_email}"
  cloudflare_token = "${var.cloudflare_token}"
}

module "qa" {
  source            = "../demo1"
  record_name       = "qa"
  cloudflare_domain = "${var.cloudflare_domain}"

  do_token         = "${var.do_token}"
  cloudflare_email = "${var.cloudflare_email}"
  cloudflare_token = "${var.cloudflare_token}"
}
