#! /usr/bin/env python

import json
import boto3
ec2 = boto3.resource('ec2')
instance = ec2.create_instances(ImageId='ami-6b7c6e0f',
    MinCount=1,
    MaxCount=1,
    InstanceType='t2.micro',
    SubnetId='subnet-f3d45bbe',
    SecurityGroupIds=['sg-1113f179'])
instance_id = instance[0].id
print "created instance with id" + " " + instance_id

client = boto3.client('ec2')
waiter = client.get_waiter('instance_running')
waiter.wait(InstanceIds=[instance_id])

instance_details = ec2.Instance(id=instance_id)
print instance_details.private_dns_name
