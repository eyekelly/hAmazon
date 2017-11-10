#! /usr/bin/env python

import boto3

ec2 = boto3.resource('ec2')

for i in ec2.instances.all(): print(i)

instance_id = input('enter the instance ID: ')

instance_details = ec2.Instance(id=instance_id)
print instance_details.private_dns_name
print instance_details.public_dns_name
