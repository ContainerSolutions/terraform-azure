resource "azure_hosted_service" "azure_test_web" {
    name = "azuretestweb"
    location = "North Europe"
    ephemeral_contents = false
    description = "Consul Hosted service created by Terraform."
    label = "azure_test_web"
}
