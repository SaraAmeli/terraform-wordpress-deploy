output "myfirst_instance_public_ip" {
  description = "Public IP of the first EC2 instance"
  value       = aws_instance.myfirst_instance.public_ip
}
#Second instance
#output "mysecond_instance_public_ip" {
#  description = "Public IP of the second EC2 instance"
#  value       = aws_instance.mysecond_instance.public_ip
#}
