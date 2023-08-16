locals {
  domain_cdicohorts_thirteen = "cdicohorts-thirteen.com"
}

provider "aws" {
  alias  = "domain_cdicohorts_thirteen"
  region = "us-east-2"
  assume_role {
    role_arn = "arn:aws:iam::${var.nonprod_account_id}:role/${var.assume_role}"
  }
}

# zone id for the top-level-zone
data "aws_route53_zone" "zone_id_cdicohorts_thirteen" {
  provider = aws.domain_cdicohorts_thirteen
  name     = local.domain_cdicohorts_thirteen
}