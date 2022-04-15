# ansible-instalar-kubernetes-centos8

Este repositorio contiene un playbook que facilita la instalación de Kubernetes en un cluster de servidores con Centos8.

## Preparar los nodos a gestionar

Como ROOT>>

Generar clave ssh en el nodo de control se creará en ~/.ssh/id_rsa.pub

`ssh-keygen -t rsa`

Copiar la clave pública en el script ubicado en preparara_nodos_administrados

`preparar_nodos_administrados\preparar_nodos.sh`

Ejecutar el script en los nodos administrados

## Ejecutar playbooks instalación Kubernetes

Modificar el fichero 'inventario' para añadir los nodos disponibles

ejemplo:

```bash

[master-node]
master-node ansible_host=192.168.205.212

[worker-nodes]
worker-node1 ansible_host=192.168.205.211
worker-node2 ansible_host=192.168.205.212

```

- Ejecutar el primer playbook

`ansible-playbook all_roles.yaml -vv`

- Ejecutar el segundo playbook

`ansible-playbook master_roles.yaml -vv`
