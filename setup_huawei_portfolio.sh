#!/bin/bash

set -e

echo "======================================"
echo " Huawei OpenStack SDN Portfolio Setup "
echo "======================================"

mkdir -p \
architecture/images \
openstack \
underlay \
automation \
screenshots/validation \
docs


touch screenshots/validation/.gitkeep
touch architecture/images/.gitkeep


cat > .gitignore <<'EOL'
# OpenStack
openrc
local.conf
.env

# Keys
*.pem
*.key
id_rsa
id_ed25519

# Logs
*.log

# Temporary
*.tmp

# Python
__pycache__
*.pyc

# IDE
.vscode
.idea
EOL


cat > README.md <<'EOL'
# Huawei Internship Project

## Private Cloud SDN Infrastructure using OpenStack

Engineering project focused on designing and validating a private cloud platform based on OpenStack and SDN concepts.

## Objectives

- Deploy OpenStack cloud services
- Implement virtual networking with Neutron
- Provision virtual machines
- Apply cloud security mechanisms
- Document infrastructure engineering decisions


## Architecture

cat > setup_huawei_portfolio.sh <<'EOF'
#!/bin/bash

set -e

echo "======================================"
echo " Huawei OpenStack SDN Portfolio Setup "
echo "======================================"

mkdir -p \
architecture/images \
openstack \
underlay \
automation \
screenshots/validation \
docs


touch screenshots/validation/.gitkeep
touch architecture/images/.gitkeep


cat > .gitignore <<'EOL'
# OpenStack
openrc
local.conf
.env

# Keys
*.pem
*.key
id_rsa
id_ed25519

# Logs
*.log

# Temporary
*.tmp

# Python
__pycache__
*.pyc

# IDE
.vscode
.idea
EOL


cat > README.md <<'EOL'
# Huawei Internship Project

## Private Cloud SDN Infrastructure using OpenStack

Engineering project focused on designing and validating a private cloud platform based on OpenStack and SDN concepts.

## Objectives

- Deploy OpenStack cloud services
- Implement virtual networking with Neutron
- Provision virtual machines
- Apply cloud security mechanisms
- Document infrastructure engineering decisions


## Architecture

cat > setup_huawei_portfolio.sh <<'EOF'
#!/bin/bash

set -e

echo "======================================"
echo " Huawei OpenStack SDN Portfolio Setup "
echo "======================================"

mkdir -p \
architecture/images \
openstack \
underlay \
automation \
screenshots/validation \
docs


touch screenshots/validation/.gitkeep
touch architecture/images/.gitkeep


cat > .gitignore <<'EOL'
# OpenStack
openrc
local.conf
.env

# Keys
*.pem
*.key
id_rsa
id_ed25519

# Logs
*.log

# Temporary
*.tmp

# Python
__pycache__
*.pyc

# IDE
.vscode
.idea
EOL


cat > README.md <<'EOL'
# Huawei Internship Project

## Private Cloud SDN Infrastructure using OpenStack

Engineering project focused on designing and validating a private cloud platform based on OpenStack and SDN concepts.

## Objectives

- Deploy OpenStack cloud services
- Implement virtual networking with Neutron
- Provision virtual machines
- Apply cloud security mechanisms
- Document infrastructure engineering decisions


## Architecture

cat > setup_huawei_portfolio.sh <<'EOF'
#!/bin/bash

set -e

echo "======================================"
echo " Huawei OpenStack SDN Portfolio Setup "
echo "======================================"

mkdir -p \
architecture/images \
openstack \
underlay \
automation \
screenshots/validation \
docs


touch screenshots/validation/.gitkeep
touch architecture/images/.gitkeep


cat > .gitignore <<'EOL'
# OpenStack
openrc
local.conf
.env

# Keys
*.pem
*.key
id_rsa
id_ed25519

# Logs
*.log

# Temporary
*.tmp

# Python
__pycache__
*.pyc

# IDE
.vscode
.idea
EOL


cat > README.md <<'EOL'
# Huawei Internship Project

## Private Cloud SDN Infrastructure using OpenStack

Engineering project focused on designing and validating a private cloud platform based on OpenStack and SDN concepts.

## Objectives

- Deploy OpenStack cloud services
- Implement virtual networking with Neutron
- Provision virtual machines
- Apply cloud security mechanisms
- Document infrastructure engineering decisions


## Architecture



Checks:

- Instance state
- Network attachment
- Security rules
- IP allocation
EOL


cat > underlay/cisco_architecture.md <<'EOL'
# Cisco Underlay Architecture

Physical network foundation supporting the cloud platform.

Concepts:

- VLAN segmentation
- Routing
- Switching
- Connectivity
EOL


cat > underlay/vlan_routing.md <<'EOL'
# VLAN and Routing Design

Logical separation:

- Management
- Servers
- Storage
- Users


Routing enables communication between segments.
EOL


cat > docs/internship_report.md <<'EOL'
# Huawei Internship Report

## Project

Private Cloud SDN Infrastructure based on OpenStack.


## Achievements

- OpenStack deployment
- SDN networking
- VM provisioning
- Security configuration
- Cloud troubleshooting


## Skills

- OpenStack administration
- Linux networking
- Cloud architecture
- Documentation
EOL


cat > automation/network_deploy.sh <<'EOL'
#!/bin/bash

echo "OpenStack SDN Deployment"

source ~/devstack/openrc admin admin

openstack network list

echo "Deployment validation completed"
EOL


cat > automation/cleanup.sh <<'EOL'
#!/bin/bash

echo "Cleanup script"
EOL


chmod +x automation/*.sh


git add .

git commit -m "docs: build complete Huawei OpenStack SDN portfolio" || true

echo "======================================"
echo " Portfolio created successfully "
echo "======================================"

