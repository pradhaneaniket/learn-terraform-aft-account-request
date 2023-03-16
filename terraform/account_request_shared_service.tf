module "sharedService" {

    source = "./modules/aft-account-request"
    control_tower_parameters = {
        AAccountEmail = "ahtesham.sheikh+shared@blazecla.com"
        AAccountName = "Share Service"
        MManagedOrganizationalUnit = "Infrastructure"
        SSSOUserEmail = "aniket.pradhane@blazeclan.com"
        SSSOUserFirstName = "Aniket"
        SSSOUserLastName = "Pradhane"

    }

    account_tags = {
        "Test:Account"       = "SharedService"
        "Test:Vended"        = "True"
    }

    change_management_parameters = {
        chanechange_reason = "Initial Account provision"
        chanchange_requested_by = "Aniket Pradhane"
    
    }
    account_customizations_name = "shared-service-account-customization"
}