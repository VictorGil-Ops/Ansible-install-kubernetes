# ansible-instalar-kubeadm-centos-8
Este repositorio contiene un playbook que facilita la instalación de Kubernetes en un cluster de servidores Centos 8

# Preparar los nodos a gestionar

Generar clave ssh en el nodo de control se creará en ~/.ssh/id_rsa.pub

`ssh-keygen -t rsa`

Copiar la clave pública en el script ubicado en preparara_nodos_administrados

`preparar_nodos_administrados\preparar_nodos.sh`

Ejecutar el script en los nodos administrados

