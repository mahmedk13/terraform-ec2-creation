variable "region" {
    type        =   string
    description = "name of vpc"
  
}

variable "cidr-block" {
    type        =   string
    description = "range of cidr"
  
}

variable "public-cidrs" {
    type        =   list(string)
    description =   "range of subnet cidrs"
  
}