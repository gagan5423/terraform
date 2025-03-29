output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.gagan_vpc.id
}

output "subnet_id" {
  description = "ID of the created subnet"
  value       = aws_subnet.gagan_subnet.id
}