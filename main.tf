# The configuration for the `remote` backend.
 terraform {
   backend "local" {
     path = "./terraform.tfstate"
   }
#   backend "remote" {
#    cloud {
#        # The name of your Terraform Cloud organization.
#        organization = "jl-sandbox"
#
#        workspaces {
#          name = "jl-sandbox-workflow"
#        }
#   }
}

resource "null_resource" "example" {
    triggers = {
        value = "A example resource that does nothing!"
    }
}
