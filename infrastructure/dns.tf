data "aws_route53_zone" "ghent_madoc_io" {
  name         = "ghent.madoc.io."
  private_zone = false
}

resource "aws_route53_record" "madoc" {
  zone_id = data.aws_route53_zone.ghent_madoc_io.zone_id
  name    = var.madoc_domain
  type    = "A"
  ttl     = "3600"
  records = [aws_eip.madoc.public_ip]
}