## Define CIDR Block
variable "cidr_block" {
    default = "10.0.0.0/16"
}

## Define Subnet CIDR
variable "public_subnet_1_cidr" {
    default = "10.0.1.0/24"
}


variable "public_subnet_2_cidr" {
    default = "10.0.2.0/24"
}

variable "private_subnet_1_cidr" {
    default = "10.0.3.0/24"
}

variable "private_subnet_2_cidr" {
    default = "10.0.4.0/24"
}

variable "private_subnet_3_cidr" {
    default = "10.0.5.0/24"
}

variable "private_subnet_4_cidr" {
    default = "10.0.6.0/24"
}