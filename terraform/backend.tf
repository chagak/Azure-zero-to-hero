
# Backend should create separately in this case
terraform {
  backend "azurerm" {
    resource_group_name  = "example-resources"            # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "chaganotestorage"                                 # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "backend-tfstate"                                  # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "terraform.tfstate"                   # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
    access_key           = "M2B3CK72/FhCNxN1ecpxLMODLFuUlC+qWAkls+PS4Ga6qIb4U73Lad9+v96tOLGz14Xr2P12wcmR+ASt+3aU+A=="  # Can also be set via `ARM_ACCESS_KEY` environment variable.
  }
}
