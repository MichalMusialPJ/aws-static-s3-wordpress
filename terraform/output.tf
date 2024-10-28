# output "aws_vpcs" {
#  value       = [for vpc in aws_vpc.main_vpc : vpc.ip]
#  description = "Public ips of the instances"
# }