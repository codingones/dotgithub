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
      business_owner  = "USER_EMAIL"
      technical_owner = "USER_EMAIL"
      approver        = "USER_EMAIL"
      creator         = "terraform"
      team            = "USER_NAME"
    }
    repository : ".github"
  }
}
