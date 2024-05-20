# DevOps

## Vagrant

#### Pre-req

* VirtualBox

- https://www.virtualbox.org/

#### Install and Setup

* Vagrant

> https://developer.hashicorp.com/vagrant/install

* Plugin vbguest

```sh
vagrant plugin install vagrant-vbguest --plugin-version 0.21
```
## Services

### Run

- Jenkins
- SonarQube

```sh
make 
```

### Web

> - [Jenkins](http://localhost:9001/)
> - [!Note] Token 1 - Localizar o token no console ao final da instalação
> - [!Note] Token 2 - `cat /var/lib/jenkins/secrets/initialAdminPassword`

> - [SonarQube](http://localhost:9000/)
> - login: admin
> - password: admin

#### References

- https://www.vagrantup.com/
