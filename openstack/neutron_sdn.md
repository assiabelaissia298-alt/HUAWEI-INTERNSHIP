# OpenStack Neutron - SDN Implementation


## Role

Neutron provides Network as a Service inside OpenStack.

It manages:

- Virtual networks
- Subnets
- Routers
- Security Groups
- Floating IP


---

# Network Architecture

VM
|
Port
|
Neutron Network
|
Router
|
External Network
|
Internet


---

# Implemented Networks


## web-net

CIDR:
10.20.0.0/24


Purpose:

Application network


---

## db-net

CIDR:


Purpose:

Database isolation network


---

# Validation Commands


List networks:

```bash
openstack network list
List routers:openstack router list

---

# 5) Ajouter et commit

```bash
git add .

git commit -m "docs: create professional Huawei OpenStack SDN documentation"

git push

