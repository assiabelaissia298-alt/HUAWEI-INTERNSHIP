# Global Cloud SDN Architecture


## Overview


The implemented architecture combines:


- Physical network infrastructure (Underlay)
- OpenStack Cloud Platform
- SDN virtual networking (Overlay)
- Virtual Machine services



## High Level Design

# Global Cloud SDN Architecture


## Overview


The implemented architecture combines:


- Physical network infrastructure (Underlay)
- OpenStack Cloud Platform
- SDN virtual networking (Overlay)
- Virtual Machine services



## High Level Design


                 Users
                   |
                   |
            Horizon Dashboard
                   |
            OpenStack APIs
                   |
    --------------------------------
    |              |               |
  Nova          Neutron          Glance

Compute Networking Images
| |
| |
Virtual SDN Overlay
Machines |
|
Neutron Router
|
External Network
|
Physical Network
|
Cisco Underlay



---

# Networking Model


## Underlay Layer

Responsible for:

- Physical connectivity
- VLAN transport
- Routing


## Overlay Layer

Responsible for:

- Virtual networks
- Tenant isolation
- VM communication



---

# Validation Chain


The complete chain validated:



User

|

Floating IP

|

Neutron Router

|

Security Group

|

VM Instance

|

SSH Access



---

# Engineering Approach


The architecture follows cloud networking principles:

- Separation of physical and virtual networking
- Software defined network management
- Automated resource provisioning
- Security by segmentation
ÉTAPE 4 — Ajouter une section "Engineering Decisions"

Dans README :

À la fin ajoute :

---

# Engineering Decisions


## Why OpenStack?


OpenStack provides an open source implementation of enterprise cloud infrastructure.

It allows the implementation of:

- Infrastructure as a Service
- Virtual networking
- Automated provisioning



## Why Neutron?


Neutron was selected because it provides:

- Network virtualization
- Tenant isolation
- Software Defined Networking capabilities



## Why Security Groups?


Security groups provide distributed firewall capabilities directly attached to instances.


## Why Floating IP?


Floating IP allows controlled external access while keeping instances inside private networks.



---

# Validation Methodology


Each component was validated independently:


| Component | Validation |
|---|---|
| OpenStack services | Service status check |
| Networks | Neutron CLI validation |
| Instances | Nova state verification |
| Security | Rule verification |
| Access | SSH connection test |

ÉTAPE 5 — Commit
git add .

git commit -m "docs: add cloud architecture and engineering decisions"

git push


