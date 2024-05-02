# DevOps

## Linux

#### Commands

```sh
sed -i -e s#TAG_IN_FILE#abc# file
```

## Git Tag

#### Commands

```sh
 git tag -a v1.1.0 -m "Release init"
 git push origin v1.1.0
 git describe --abbrev=0
 export TAG=$(git describe --abbrev=0)
```

#### Install and Setup

## Docker Swarm

#### Install and Setup

- Manager

```sh
docker swarm init --advertise-addr <IP_MANAGER>
docker swarm join-token manager
docker node ls
```

```sh
docker service create --name demo --publish 80:80 nginx
docker service ls
docker service ps demo
docker service scale demo=3
```
- Workers

```sh
docker swarm join --token <TOKEN> <IP_MANAGER>
```

## Ansible

#### Pre-req

#### Install and Setup

https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-ansible-on-ubuntu-22-04

#### Commands

- add hosts and groups
> /etc/ansible/hosts

```sh
[apps]
app01

[dbs]
db01
```

```sh
ansible -m ping all
```

#### References

- https://www.ansible.com/

## Vagrant

#### Pre-req

* VirtualBox

- https://www.virtualbox.org/

* NFS Mount on Ubuntu

- https://www.digitalocean.com/community/tutorials/how-to-set-up-an-nfs-mount-on-ubuntu-22-04
- https://www.tecmint.com/install-nfs-server-on-ubuntu/

Install

```sh
sudo apt install nfs-kernel-server
```

Create an NFS Export Directory

```sh
sudo mkdir -p /mnt/nfs_share
sudo chown -R nobody:nogroup /mnt/nfs_share/
sudo chmod 777 /mnt/nfs_share/
```

Grant NFS Share Access to Client Systems

```sh
sudo vim /etc/exports
/mnt/nfs_share  192.168.56.2/24(rw,sync,no_subtree_check)
```

```sh
sudo exportfs -a
sudo systemctl restart nfs-kernel-server
```

Allow NFS Access through the Firewall

```sh
sudo ufw allow from 192.168.56.2/24 to any port nfs
sudo ufw enable
sudo ufw status
```
192.168.56.2

#### Install and Setup

* Vagrant

> https://developer.hashicorp.com/vagrant/install

* Plugin vbguest

```sh
vagrant plugin install vagrant-vbguest --plugin-version 0.21
```

#### Commands

* Criar `Vagrantfile`

```sh
vagrant init
```

* Startup

```sh
vagrant up
```

> [!WARNING]
> - NS_ERROR_FAILURE (0x80004005)
> - https://forums.virtualbox.org/viewtopic.php?t=12693
> - KVM hypervisor - https://ubuntu.com/blog/kvm-hyphervisor

```sh
# lsmod |grep kvm
# sudo modprobe -r kvm-intel
nano /etc/modprobe.d/blacklist.conf >> blacklist kvm-intel
echo "blacklist kvm-intel" >> /etc/modprobe.d/blacklist-local.conf
echo "" >> /etc/modprobe.d/blacklist-local.conf
```

> [!WARNING]
> - mount.nfs: requested NFS version or transport protocol is not supported
> - Check: https://github.com/hashicorp/vagrant/issues/7646
> - https://github.com/hashicorp/vagrant/issues/9666

```sh
vagrant ssh
vagrant halt
vagrant suspend
vagrant destory
vagrant reload
vagrant status
vagrant provision
```
#### References

- https://www.vagrantup.com/


