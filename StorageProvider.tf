resource "azure_storage_service" "azure_test_storage" {
    name = "storage"
    location = "North Europe"
    description = "Made by Terraform."
    account_type = "Standard_LRS"
}
