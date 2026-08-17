variable "project" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

/* variable "name" {
    default = "${var.project}-${var.environment}"
} */

variable "instance_type" {
    default = "t3.micro"
}