// Public Subnets
resource "aws_subnet" "public1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.subnet_public1_cidr
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.subnet_public2_cidr
  map_public_ip_on_launch = true
}

//Private Subnets
resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.subnet_private1_cidr
}

resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.subnet_private2_cidr

}
