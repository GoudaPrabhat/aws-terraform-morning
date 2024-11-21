resource "aws_route" "myroute" {
  route_table_id = aws_route_table.myrt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.myigw.id
}