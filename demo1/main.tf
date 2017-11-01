# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = "${var.do_token}"
}

# Create a web server
resource "digitalocean_droplet" "web" {
  image  = "29005922"
  name   = "web-1"
  region = "sfo2"
  size   = "512mb"
}

# Configure the Cloudflare provider
provider "cloudflare" {
  email = "${var.cloudflare_email}"
  token = "${var.cloudflare_token}"
}

# Create a record
resource "cloudflare_record" "www" {
  domain = "${var.cloudflare_domain}"
  name   = "${var.record_name}"
  value  = "${digitalocean_droplet.web.ipv4_address}"
  type   = "A"
}
