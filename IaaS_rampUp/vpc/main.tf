 

resource "aws_vpc" "vpc-ramUp" {
    cidr_block = "10.0.0.0/24"
    tags = {
      Name = "vpc-rampUp"
      Owner = "EBloemer"
    }
  
}

resource "aws_subnet" "public-subtnet" {
  vpc_id = aws_vpc.vpc-ramUp.id
  cidr_block = "10.0.0.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet-EBloemer"
  }

}

#resource "aws_eip" "" {
  
#}

resource "aws_internet_gateway" "igw" {
 vpc_id = aws_vpc.vpc-ramUp.id

 tags = {
   Name = "igw"  
  }

}


resource "aws_route_table" "rt-public" {
    vpc_id =  aws_vpc.vpc-ramUp.id

    route{
     cidr_block="0.0.0.0/0"
     gateway_id = aws_internet_gateway.igw.id
    } 
    
    route{
     ipv6_cidr_block="::/0"
     gateway_id = aws_internet_gateway.igw.id
    } 

    tags = {
      Name = "Route-table"
    }
}

resource "aws_route_table" "rt-public" {
    subnet_id = aws_subnet.public-subnet.id
    route_table_id = aws_route_table.rt-public.id
  
}
