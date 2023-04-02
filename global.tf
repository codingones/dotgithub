locals {
  product_information = {
    context : {
      product    = var.organization_name
      service    = "organization"
      start_date = "2023-04-02"
      end_date   = "unknown"
    }
    purpose : {
      disaster_recovery = "medium"
      service_class     = "bronze"
    }
    organization : {
      client = var.organization_name
    }
    stakeholders : {
      business_owner  = "romain-cambonie@gmail.com"
      technical_owner = "romain-cambonie@gmail.com"
      approver        = "romain-cambonie@gmail.com"
      creator         = "terraform"
      team            = "romain-cambonie"
    }
    repository : ".github"
  }
}
