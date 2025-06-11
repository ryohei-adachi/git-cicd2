package main

deny_public_access_prevention contains msg if {
    not input.permissons
    msg = "Workflow permissons are missing"
}

deny_public_access_prevention contains msg if {
    input.permissons != {}
    msg = sprintf("Workflow permissons are not empty: %v", [input.permissons])
}