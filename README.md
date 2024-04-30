# DevOps

## Ansible

#### Pre-req

#### Install and Setup

#### Commands

#### References

- https://www.ansible.com/

## Vagrant

#### Pre-req

* VirtualBox

- https://www.virtualbox.org/

* NFS Mount on Ubuntu

- https://www.digitalocean.com/community/tutorials/how-to-set-up-an-nfs-mount-on-ubuntu-22-04

```sh
sudo apt install nfs-kernel-server
```

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

```sh
vagrant ssh
vagrant halt
vagrant suspend
vagrant destory
vagrant reload
vagrant status
```
#### References

- https://www.vagrantup.com/


