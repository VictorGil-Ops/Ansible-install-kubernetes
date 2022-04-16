# ansible-install-kubernetes-centos8

This repository contain a playbook for a easy installation kubernetes cluster with Centos 8.

## Preparare Ansible Control Node

I use WSL or MSYS2.

1. Create ansible user

```bash

sudo adduser ansible
sudo passwd ansible

```

2. Generate ssh key, path "~/.ssh/id_rsa.pub"

```bash

ssh-keygen -t rsa`

```

3. Copy the public key in ssh_prepare_remote_nodes\ssh_prepare_node.sh << PASTE PUBLIC_KEY


4. Execute the script on kubernetes cluster

This script create a ansible user and add the ssh key.

## Ansible playbook

1. Check and modify the file 'inventory' and add your ip nodes

> example:

```bash

[master-node]
master-node ansible_host=192.168.205.212

[worker-nodes]
worker-node1 ansible_host=192.168.205.211
worker-node2 ansible_host=192.168.205.212

```

2. Run a playbook

```bash

    ansible-playbook setup-nodes.yml -v

```