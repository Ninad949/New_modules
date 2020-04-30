#count =   ${var.count_public_subnet}

output "vpc_id" {
  value ="${ aws_vpc.main.id}"
}

output "public_table_id" {
  value ="${ aws_route_table.public_table.id}"
}

output "private_table_id" {
  value = "${aws_route_table.private_table.id}"
}


output "public_subnet_id_1" {

value = "${aws_subnet.public_subnets[0].public.id}"

}

output "public_subnet_id_2" {

value = "${aws_subnet.public_subnets[1].public.id}"

}

output "private_subnet_id_1" {

value = "${aws_subnet.private_subnets[0].private.id}"

}
output "private_subnet_id_2" {

value = "${aws_subnet.private_subnets[1].private.id}"

}

#output "internet__id "  {

#value = "${aws_internet_gateway.main.id}"

#}




