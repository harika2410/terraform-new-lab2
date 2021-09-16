data "aws_vpc" "vpc_existing"{
    id = "vpc-06303728c5f70896f"
}
data "aws_ami" "example" {
    most_recent = true
    owners      = ["amazon"]
    filter {
        name    = "name"
        values  = ["amzn2-*"]
    }
    filter {
        name   = "architecture"
        values = ["x86_64"]
    }
}