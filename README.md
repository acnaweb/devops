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
- Nexus

```sh
make 
```

### Web

- [Jenkins](http://localhost:9001/)

> [!WARNING] 
> - Token 1 - Localizar o token no console ao final da instalação
> - Token 2 - `cat /var/lib/jenkins/secrets/initialAdminPassword`

- [SonarQube](http://localhost:9000/)

> [!NOTE] 
> - login: admin
> - password: admin

- [Nexus](http://localhost:9002/)

> [!WARNING] 
> - Token - `cat /opt/sonatype/sonatype-work/nexus3/admin.password `




#### References

- https://www.vagrantup.com/
