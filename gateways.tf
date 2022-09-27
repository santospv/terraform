resource "aws_internet_gateway" "testEnvGw" {
  vpc_id = "${aws_vpc.testEnv.id}"
tags = {
    Name = "testEnvGw"
  }
}