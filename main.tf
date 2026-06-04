resource "azurerm_resource_group" "abc" {
    name = "testing"
    location = "eastus"
}



resource "azurerm_storage_account" "xyzg" {
    depends_on = [ azurerm_resource_group.abc ]
 name = "testingstorage"
 resource_group_name = "testing"
 location = "eastus"
 account_tier = "Standard"
 account_replication_type = "LRS"

}
