# OpenStack Nova - Compute Infrastructure


## Role

Nova is the OpenStack Compute service responsible for the complete lifecycle of virtual machines.

It manages:

- Instance creation
- CPU and RAM allocation
- Virtual machine scheduling
- Instance lifecycle


---

# VM Deployment Workflow

User
|
Horizon / CLI
|
Nova API
|
Scheduler
|
Compute Node
|
Virtual Machine



---

# Implemented Workflow


## 1. Image Selection

The VM image is provided by Glance.

Example:


Cirros Image
Ubuntu Cloud Image



---

## 2. Instance Creation


Parameters:

- Image
- Flavor
- Network
- Security Group
- Keypair


Example:


```bash
openstack server create \
--image cirros \
--flavor m1.small \
--network web-net \
--key-name assia-key \
test-instance
Validation

Check instances:

openstack server list

Expected state:

ACTIVE
SSH Access Validation

Connection:

ssh -i assia-key.pem cirros@FLOATING_IP

Result:

$
$
$
Conclusion

Nova compute provisioning was successfully validated.

The complete VM lifecycle was tested:

Image → Instance → Network → Security → Remote Access


---

# 2) Security Documentation

```bash
nano openstack/security.md

Colle :

# OpenStack Cloud Security


## Security Model


OpenStack uses a layered security approach:



External Network
|
Security Groups
|
Virtual Router
|
VM Instance



---

# Security Groups


Security Groups act as virtual firewalls attached to instances.


Implemented rules:


## SSH Access

Protocol:


TCP


Port:


22



Purpose:

Remote administration


---

## ICMP


Protocol:


ICMP



Purpose:

Network troubleshooting


---

# Database Isolation


The database network is isolated from public access.


Example:



Web Network
10.20.0.0/24

    |
    |
    v

Database Network
10.20.1.0/24



Only authorized traffic is allowed.


---

# Validation


Security rules:


```bash
openstack security group rule list

Instance security:

openstack server show INSTANCE_ID
Result

Network segmentation and access control were successfully validated.


---

# 3) Floating IP Documentation

```bash
nano openstack/floating_ip.md

Colle :

# OpenStack Floating IP Implementation


## Objective


Provide external access to private cloud instances.


---

# Architecture



User

|

Floating IP

|

Neutron Router

|

Private Network

|

Virtual Machine



---

# Workflow


1. Create external network

2. Create router

3. Associate gateway

4. Allocate floating IP

5. Attach IP to instance


---

# Commands


List floating IP:


```bash
openstack floating ip list

Associate IP:

openstack server add floating ip INSTANCE FLOATING_IP
Validation

Remote access:

ssh -i key.pem user@floating_ip

Result:

Successful connection to cloud instance.


---

# 4) Troubleshooting

```bash
nano openstack/troubleshooting.md

Colle :

# OpenStack Troubleshooting Report


## Issue 1 - SSH Connection Failure


### Symptoms

VM was running but SSH connection failed.


### Investigation


Checked:

- Security groups
- Floating IP association
- Network ports


Commands:


```bash
openstack port list

openstack security group rule list
Resolution

Added required SSH rule:

TCP 22
Issue 2 - Network Connectivity Problem
Investigation

Validated:

Router interfaces
Subnets
Network attachment

Commands:

openstack router list

openstack subnet list
Resolution

Corrected Neutron network configuration.

Engineering Lesson

Cloud troubleshooting requires analyzing the complete chain:

VM → Port → Network → Router → External Gateway


---

# 5) Underlay Cisco Architecture

```bash
nano underlay/cisco_architecture.md

Colle :

# Cisco Underlay Network Architecture


## Objective


Provide the physical connectivity layer supporting the cloud infrastructure.


---

# Underlay Concept


The underlay provides:

- Physical connectivity
- VLAN transport
- Routing
- Network availability


---

# Design Principles


Implemented concepts:


## VLAN Segmentation


Separate logical networks:



Management
Storage
Servers
Users



---

## Layer 2 Resilience


Technologies studied:

- Trunking
- Link aggregation
- STP concepts


---

## Layer 3 Routing


Routing principles:

- Inter VLAN communication
- Dynamic routing concepts


---

# Integration with OpenStack


The physical network provides connectivity for:


OpenStack Overlay
|
|
Physical Underlay



---

# Result


The underlay design enables the deployment of SDN-based cloud networking.
6) Rapport stage
nano docs/internship_report.md

Colle :

# Huawei Internship Technical Report


## Project

Design and validation of a private cloud SDN infrastructure using OpenStack.


---

# Objectives


The project aims to understand and implement enterprise cloud concepts:


- Cloud Infrastructure
- SDN Networking
- Virtualization
- Security
- Automation


---

# Achievements


## Cloud Platform

✔ OpenStack deployed

✔ Services validated


## Networking

✔ Neutron SDN networks

✔ Virtual routing

✔ Floating IP


## Compute

✔ VM provisioning

✔ SSH access


## Security

✔ Security Groups

✔ Network isolation


---

# Skills Developed


Technical:

- OpenStack administration
- Linux networking
- Cloud architecture
- SDN concepts
- Infrastructure troubleshooting


Engineering:

- Documentation
- Problem solving
- System design
Maintenant enregistrer tout :
git add .

git commit -m "docs: complete OpenStack cloud engineering documentation"

git push

