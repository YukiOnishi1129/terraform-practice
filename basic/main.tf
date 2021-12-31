# 変数
# variable "example_instance_type" {
#     default = "t3.micro"
# }

# local変数
# locals {
#     example_instance_type = "t3.micro"
# }



resource "aws_instance" "example" {
    ami = "ami-0c3fd0f5d33134a76"
    instance_type = "t3.micro"
    # 変数の使い方
    # instance_type = var.example_instance_type
    # local変数の使い方
    # instance_type = local.example_instance_type
}

output "example_instance_type" {
    value = aws_instance.example.id
}