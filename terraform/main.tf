/* # EXAMPLE (Template)
module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "<ACCOUNT EMAIL>"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "<SSO EMAIL>"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
*/



# 1 Account for AFT Testing
module "aft-testing" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "acc-aws-cs-gvpnid-preprod@ngena.net"
    AccountName               = "acc-aws-cs-gvpnid-preprod"
    ManagedOrganizationalUnit = "Cloud Controllers Preprod (ou-sit7-7mmlnjx7)"
    SSOUserEmail              = "acc-aws-cs-gvpnid-preprod@ngena.net"
    SSOUserFirstName          = "acc-aws-cs"
    SSOUserLastName           = "gvpnid-preprod"
  }

  account_tags = {
    "Managed by" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "ngena Security"
    change_reason       = "Create a new AWS Account for FP developers"
  }

  custom_fields = {
    group = "preprod"
  }

  account_customizations_name = "acc-aws-cs-gvpnid-preprod"
}


# 2 Account for AFT Testing
module "aft-acc-aws-cs-gvpnid-dev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "acc-aws-cs-gvpnid-dev@ngena.net"
    AccountName               = "acc-aws-cs-gvpnid-dev"
    ManagedOrganizationalUnit = "Cloud Controllers Preprod (ou-sit7-7mmlnjx7)"
    SSOUserEmail              = "acc-aws-cs-gvpnid-dev@ngena.net"
    SSOUserFirstName          = "acc-aws-cs"
    SSOUserLastName           = "gvpnid-dev"
  }

  account_tags = {
    "Managed by" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "ngena Security"
    change_reason       = "Create a new AWS Account for FP developers"
  }

  custom_fields = {
    group = "preprod"
  }

  account_customizations_name = "acc-aws-cs-gvpnid-dev"
}