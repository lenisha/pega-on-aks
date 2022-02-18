#############
# VARIABLES #
#############

variable "aks_admin_group" {
    default = "AKS App Admin Team"

}

variable "aks_user_group" {
    default = "AKS App Dev Team"

}

variable "hub_rg_name" {
    default = "HUB_RG"
}