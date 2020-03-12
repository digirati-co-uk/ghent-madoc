resource "aws_ssm_parameter" "mysql_port" {
  name  = "/madoc/${var.prefix}/${terraform.workspace}/MYSQL_PORT"
  type  = "String"
  value = "3306"

  tags = {
      "terraform" = true,
      "system" = "madoc"
  }
}

resource "aws_ssm_parameter" "mysql_database" {
  name  = "/madoc/${var.prefix}/${terraform.workspace}/MYSQL_DATABASE"
  type  = "String"
  value = "omeka_s"

  tags = {
      "terraform" = true,
      "system" = "madoc"
  }
}

resource "aws_ssm_parameter" "mysql_user" {
  name  = "/madoc/${var.prefix}/${terraform.workspace}/MYSQL_USER"
  type  = "String"
  value = "omeka_s"

  tags = {
      "terraform" = true,
      "system" = "madoc"
  }
}

resource "aws_ssm_parameter" "madoc_domain" {
  name  = "/madoc/${var.prefix}/${terraform.workspace}/MADOC_DOMAIN"
  type  = "String"
  value = "http://${var.madoc_domain}"

  tags = {
      "terraform" = true,
      "system" = "madoc"
  }
}