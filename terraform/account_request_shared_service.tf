module "sharedService" {

    source = "./modules/aft-account-request"
    control_tower_parameters = {
        AccountEmail = "ahtesham.sheikh+shared@blazecla.com"
        AccountName = "Share Service"
        ManagedOrganizationalUnit = "Infrastructure"
        SSOUserEmail = "aniket.pradhane@blazeclan.com"
        SSOUserFirstName = "Aniket"
        SSOUserLastName = "Pradhane"

    }

    account_tags = {
        "Test:Account"       = "SharedService"
        "Test:Vended"        = "True"
    }

    change_management_parameters = {
        change_reason = "Initial Account provision"
        change_requested_by = "Aniket Pradhane"
    
    }
    account_customizations_name = "shared-service-account-customization"
}