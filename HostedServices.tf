resource "azure_hosted_service" "azure_test_nat" {
    name = "azuretestnat"
    location = "North Europe"
    ephemeral_contents = false
    description = "Nat Gateway Hosted service created by Terraform."
    label = "azure_test_nat"
}
