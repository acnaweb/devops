# Nexus

## Install

### Vagrant

```sh
vagrant up
```
### Docker

## Run

- http://localhost:9001/

```sh
sudo systemctl status jenkins
sudo systemctl start jenkins
```

## Uninstall

- https://webhostinggeeks.com/howto/how-to-uninstall-jenkins-on-ubuntu/

```sh
sudo systemctl stop jenkins
sudo apt-get purge jenkins
sudo rm /etc/apt/sources.list.d/jenkins.list
sudo rm -rf /var/lib/jenkins/
sudo rm -rf /var/cache/jenkins
sudo apt-get update
sudo usermod -aG docker jenkins
```

## References

- https://repository.apache.org/
