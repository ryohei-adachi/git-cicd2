package main

deny [msg] {
    not input.permissons
    msg = "Workflow permissons are missing"
}

deny [msg] {
    input.permissons != {}
    msg = sprintf("Workflow permissons are not empty: %v", [input.permissons])
}