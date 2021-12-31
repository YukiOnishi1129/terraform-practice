# 変数
# variable "example_instance_type" {
#     default = "t3.micro"
# }

locals {
    example_instance_type = "t3.micro"
}



resource "aws_instance" "example" {
    ami = "ami-0c3fd0f5d33134a76"
    # 変数の使い方
    # instance_type = var.example_instance_type
    # local変数の使い方
    instance_type = local.example_instance_type
}