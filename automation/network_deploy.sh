#!/bin/bash

echo "OpenStack SDN Deployment"

source ~/devstack/openrc admin admin

openstack network list

echo "Deployment validation completed"
