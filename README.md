# DevOps


## 📌 Tarefas de CI e CD

### CI - Integração Contínua

| **Tarefa**                         | **Descrição**                                               |
|-------------------------------------|-------------------------------------------------------------|
| **Controle de Versão**              | Gerenciar código no repositório (GitHub, GitLab, etc.).     |
| **Build da Aplicação**              | Compilar e construir o código-fonte.                       |
| **Execução de Testes Unitários**    | Validar a lógica do código com testes unitários.           |
| **Análise Estática de Código**      | Avaliar qualidade e padrões de código (SonarQube, ESLint). |
| **Testes de Segurança**             | Verificar vulnerabilidades (SAST, Dependabot).             |
| **Empacotamento da Aplicação**      | Criar artefatos (Docker image, JAR, ZIP).                  |
| **Armazenamento de Artefatos**      | Enviar para um repositório (Artifact Registry, Nexus).     |

### CD - Entrega Contínua

| **Tarefa**                          | **Descrição**                                              |
|-------------------------------------|------------------------------------------------------------|
| **Testes de Integração**            | Testar componentes interagindo juntos.                    |
| **Testes de Aceitação Automatizados** | Validar regras de negócio (Selenium, Cypress).           |
| **Aprovação Manual (se necessário)** | Revisão antes de promover a release.                     |
| **Deploy em Ambiente de Staging**   | Implantação em ambiente de homologação.                   |

### CD - Implantação Contínua

| **Tarefa**                          | **Descrição**                                              |
|-------------------------------------|------------------------------------------------------------|
| **Deploy Automatizado em Produção** | Deploy sem intervenção manual (Cloud Run, Kubernetes).    |
| **Smoke Tests Pós-Deploy**          | Testes básicos para verificar a aplicação.                |
| **Monitoramento e Observabilidade** | Acompanhar logs, métricas e alertas (Prometheus, Stackdriver). |
| **Rollback Automático**             | Reverter para versão anterior em caso de falha.           |




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
- https://www.freecodecamp.org/news/end-to-end-api-testing-with-docker/
