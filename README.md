# DevOps

## Vagrant

### Pre-req

- https://www.virtualbox.org/

### Install and Setup

* Vagrant

> https://developer.hashicorp.com/vagrant/install

* Plugin vbguest

```sh
vagrant plugin install vagrant-vbguest
```

> [!WARNING]
> - NS_ERROR_FAILURE (0x80004005)
> - https://forums.virtualbox.org/viewtopic.php?t=12693

```sh
lsmod |grep kvm
sudo modprobe -r kvm-inte
```

### Commands

* Criar `Vagrantfile`

```sh
vagrant init
```

* Startup

```sh
vagrant up
```

```sh
vagrant ssh
vagrant halt
vagrant suspend
vagrant destory
vagrant reload
```
### References

- https://www.vagrantup.com/


