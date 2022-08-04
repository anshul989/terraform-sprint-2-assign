
## count
resource "aws_instance" "web1" {

  ami     = var.ami[count.index]

  instance_type = "t2.micro"

  count = length(var.ami)

  tags = {
    Name = var.ins_name[count.index],
    Owner = "anshul Kumar"

  }
}

## for_each (map)
resource "aws_instance" "web2" {
  for_each = var.loop_name
  ami           = "ami-09de362f44ba0a166"
  instance_type = "t2.micro"

  tags = {
    Name  = each.value,
    owner = each.key
  }
}

## for each (set)
resource "aws_instance" "web3" {
  for_each = toset(var.set2)
  ami           = "ami-09de362f44ba0a166"
  instance_type = "t2.micro"

  tags = {
    Name  = each.key,
    owner = "anshul"
  }
}

##
## nested map
resource "aws_instance" "web4" {
  for_each = var.loop_name1
  ami      = each.value.ami
  instance_type = each.value.instance_type

  tags = {
    Name  = each.value.name.my_name,
    owner = "each.key"
  }
}

# using s3 for_each (map)
resource "aws_s3_bucket" "b" {
  bucket = "anshul-bucket5"
  for_each = var.bucket

  tags = {
    Name        = each.value,
    Environment = "Dev"
  }
}

# using s3 for_each (set)
resource "aws_s3_bucket" "b1" {
  bucket = "anshul-bucket6"
  for_each =toset(var.set1)

  tags = {
    Name        = "anshul"
    Environment = "Dev"
  }
}

