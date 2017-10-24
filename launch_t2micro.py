#! /usr/bin/env python

import boto3
ec2 = boto3.resource('ec2')
instance = ec2.create_instances(ImageId='ami-6b7c6e0f',
    MinCount=1,
    MaxCount=1,
    InstanceType='t2.micro',
    SubnetId='subnet-f3d45bbe',
    SecurityGroupIds=['sg-1113f179'])
print(instance)

#create log of useful data
#
