/*
* main.tf
*/
provider "openstack" {}

module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.12.0"
  # A number of IPv6 addresses to associate with the primary network interface. Amazon EC2 chooses the IPv6 addresses from the range of your subnet.
  ipv6_address_count = 1
  # Can be used instead of user_data to pass base64-encoded binary data directly. Use this instead of user_data whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption.
  user_data_base64 = ""
  # The user data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see user_data_base64 instead.
  user_data = ""
  # Name to be used on all resources as prefix
  name = ""
  # If true, the EC2 instance will have associated public IP address
  associate_public_ip_address = false
  # A list of security group IDs to associate with
  vpc_security_group_ids = []
  # Specify one or more IPv6 addresses from the range of the subnet to associate with the primary network interface
  ipv6_addresses = []
  # The type of instance to start
  instance_type = ""
  # ID of AMI to use for the instance
  ami = ""
  # Private IP address to associate with the instance in a VPC
  private_ip = ""
}
