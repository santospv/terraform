resource "aws_subnet" "subnet-uno" {
  cidr_block = "${cidrsubnet(aws_vpc.testEnv.cidr_block, 3, 1)}"
  vpc_id = "${aws_vpc.testEnv.id}"
  availability_zone = "us-east-1a"
}
resource "aws_route_table" "route-table-testEnv" {
  vpc_id = "${aws_vpc.testEnv.id}"
route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.testEnvGw.id}"
  }
tags = {
    Name = "test-env-route-table"
  }
}
resource "aws_route_table_association" "subnet-association" {
  subnet_id      = "${aws_subnet.subnet-uno.id}"
  route_table_id = "${aws_route_table.route-table-testEnv.id}"
}