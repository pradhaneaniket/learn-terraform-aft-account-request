
module "masterAccount" {

    source = "./modules/aft-account-request"
    control_tower_parameters = {
        AccountEmail = "birajdar007shivraj@gmail.com"
        AccountName = "gmail.com"
        ManagedOrganizationalUnit = "Root"
        SSOUserEmail = "aniket.pradhane@blazeclan.com"
        SSOUserFirstName = "Aniket"
        SSOUserLastName = "Pradhane"

    }

    account_tags = {
        "Test:Account"       = "MasterAccount"
        "Test:Vended"        = "True"
    }

    change_management_parameters = {
        change_reason = "Initial Account provision"
        change_requested_by = "Aniket Pradhane"
    
    }
    account_customizations_name = "masteraccount"
}
