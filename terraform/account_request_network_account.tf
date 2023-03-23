module "NetworkAccount" {

    source = "./modules/aft-account-request"
    control_tower_parameters = {
        AccountEmail = "ahtesham.sheikh+network@blazecla.com"
        AccountName = "Network"
        ManagedOrganizationalUnit = "Infrastructure"
        SSOUserEmail = "aniket.pradhane@blazeclan.com"
        SSOUserFirstName = "Aniket"
        SSOUserLastName = "Pradhane"

    }

    account_tags = {
        "Test:Account"       = "NetworkAccount"
        "Test:Vended"        = "True"
    }

    change_management_parameters = {
        change_reason = "Initial Account provision"
        change_requested_by = "Aniket Pradhane"
    
    }
    account_customizations_name = "networkaccount"
}
