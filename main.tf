resource "aws_instance" "new_instance" {
    ami = var.ami_id
    instance_type = var.instanc_type
    tags = {
        Name = var.instanc_name
    }   
}

resource "random_id" "rand" {
  byte_length = 4
}

resource "aws_s3_bucket" "s3" {
  bucket = "vamsi-bucket-${random_id.rand.hex}"
}

