resource "azure_instance" "azure_test_web" {
    name = "${azure_virtual_network.azure_test.id}web"
    hosted_service_name = "${azure_hosted_service.azure_test_web.name}"
    image = "Ubuntu Server 14.04 LTS"
    size = "Standard_D3"
    storage_service_name = "${azure_storage_service.azure_test_storage.name}"
    location = "North Europe"
    virtual_network = "${azure_virtual_network.azure_test.id}"
    subnet = "private"
    username = "terraform"
    password = "${var.ssh_user_password}"

    endpoint {
        name = "HTTP"
        protocol = "tcp"
        public_port = 80
        private_port = 80
    }
}
