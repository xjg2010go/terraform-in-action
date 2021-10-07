data "aws_ami" "ubuntu" {
    most_recent = true
    filter {
        name  = "name"
        value = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
    }
    owners = ["099720109477"]
}

resource "aws_instance" "helloworld" {
    ami = data.aws_ami.ubuntu.id
    instance_type = "t2.micro"
}
