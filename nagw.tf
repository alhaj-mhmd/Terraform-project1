//Nat Gateway elastic IP
resource "aws_eip" "nagw_ip" {

}

resource "aws_nat_gateway" "nagw" {
  allocation_id = aws_eip.nagw_ip.id
  subnet_id     = aws_subnet.public1.id

  tags = {
    Name = "gw NAT"
  }

}