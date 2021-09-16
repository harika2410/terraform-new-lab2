resource "aws_instance" "public_ec2" {
    ami = data.aws_ami.example.id
    instance_type = "t2.micro"
    count = 2
    tags = {
        Name = dev,test,production
        env = "prod"
    }
} 
resource "aws_iam_user" "the-accounts" {
    for_each = toset( ["Todd", "James", "Alice", "Dottie"] )
    name = each.key
}
 