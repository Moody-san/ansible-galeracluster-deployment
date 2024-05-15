# Ansible Galera Cluster Deployment

This repository hosts Ansible playbooks for deploying a Galera Cluster with failover in k8s .
## Prerequisites

- **Infra provisioned through IAC**: Deployed infrastructure using [terraform multi cloud iac](https://github.com/Moody-san/terraform-multicloud-infra) (as it contains a module to automatically update inventory for ansible scripts given that ansible repo and terraform repo are in the same directories). 
- **Ansible Controller Scripts**: Run the setupiptables.yml and acceptfingerprint.yml from ansible_controller_setup repository . Link in Additional Resources .
- **Software Requirements**: Ensure Ansible cli is installed.

## Installation & Usage

To get started with deploying your Galera Cluster using Ansible, follow these steps:

```bash
git clone https://github.com/Moody-san/ansible-galeracluster-deployment.git
cd ansible-galeracluster-deployment/playbooks
ansible-playbook deploycluster.yml -i ../inventory/inventory
ansible-playbook addhealthscript.yml -i ../inventory/inventory
```

## Additional Resources
- **K8s Cluster Setup**: For setting up a K8s Cluster , visit [ansible-galeracluster-deployment](https://github.com/Moody-san/ansible-k8s-deployment).
- **CI/CD and Automation**: For CI/CD and other automation scripts, refer to [ansible-controller-setup](https://github.com/Moody-san/ansible-controller-setup).

## How it works


https://www.youtube.com/watch?v=7lCZTS3z6kk


[Click here to View animated Gif](https://github.com/Moody-san/ansible-galeracluster-deployment/assets/87976665/b90c9a5e-b5aa-4888-9376-ba894904d8b0)

