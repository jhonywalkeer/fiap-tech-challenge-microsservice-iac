### Estrutura projeto (diretórios)

Este projeto foi estruturado de forma a facilitar a organização e manutenção do código fonte, testes, documentação e demais arquivos necessários para o desenvolvimento e execução do projeto consequentemente facilitando o entendimento do projeto como um todo para todos aqueles que estejam familiarizados com o Terraform.

A estrutura do projeto foi organizada da seguinte forma:

```bash
fiap-tech-challenge-microsservice-iac
  │
  ├── docs
  │   ├── images
  │   |    ├── diagrams
  │   |    ├── icons
  │   ├── readme
  │   |    ├── en-us
  │   |    ├── es-es
  │   |    ├── pt-br
  ├── environments
  │   ├── development
  │   ├── homologation
  │   ├── production
  │   ├── test
  ├── modules
  │   ├── database
  │   |    ├── dynamo
  │   |    |    ├── main.tf
  │   |    |    ├── outputs.tf
  │   |    |    ├── variables.tf
  │   |    ├── rds
  │   |    |    ├── main.tf
  │   |    |    ├── outputs.tf
  │   |    |    ├── variables.tf
  │   ├── management
  │   |    ├── eks
  │   |    |    ├── main.tf
  │   |    |    ├── outputs.tf
  │   |    |    ├── variables.tf
  │   ├── networks
  │   |    ├── vpc
  │   |    |    ├── main.tf
  │   |    |    ├── outputs.tf
  │   |    |    ├── variables.tf
  │   ├── security
  │   |    ├── iam
  │   |    |    ├── main.tf
  │   |    |    ├── outputs.tf
  │   |    |    ├── variables.tf
  │   |    ├── policies
  │   |    |    ├── main.tf
  │   |    |    ├── outputs.tf
  │   |    |    ├── variables.tf
  │   |    ├── security-groups
  │   |    |    ├── main.tf
  │   |    |    ├── outputs.tf
  │   |    |    ├── variables.tf
  │   |    ├── subnets-groups
  │   |    |    ├── main.tf
  │   |    |    ├── outputs.tf
  │   |    |    ├── variables.tf
  ├── tests
  ├── main.tf
  ├── outputs.tf
  ├── provider.tf
  ├── start.sh
  ├── variables.tf

```

#### Diretórios

A ideia pricipal da estruturação do projeto é separar os arquivos de acordo com suas responsabilidades e funcionalidades. Para isso como observado para o provisionamento dos recursos foi utilizado a abordagem de módulos, onde cada módulo é responsável por provisionar um recurso específico, como por exemplo, banco de dados, redes, segurança, etc. Abaixo irei detalhar cada diretório (além dos módulos) e sua responsabilidade:

- **docs**: Diretório responsável por armazenar a documentação do projeto (assim como essa que você está lendo agora).
  - **images**: Diretório responsável por armazenar as imagens utilizadas na documentação.
    - **diagrams**: Diretório responsável por armazenar os diagramas utilizados na documentação.
    - **icons**: Diretório responsável por armazenar os ícones utilizados na documentação.
  - **readme**: Diretório responsável por armazenar os arquivos de documentação do projeto (parte escrita os famosos markdowns).
    - **en-us**: Diretório responsável por armazenar os arquivos de documentação em inglês (o inglês que foi utilizado foi o do Estados Unidos, onde possui separação de pastas coma a de  ADR)
    - **es-es**: Diretório responsável por armazenar os arquivos de documentação em espanhol (o espanhol que foi utilizado foi o da Espanha (não e Catalão), onde possui separação de pastas coma a de  ADR)
    - **pt-br**: Diretório responsável por armazenar os arquivos de documentação em português (o português que foi utilizado foi o do Brasil, onde possui separação de pastas coma a de  ADR)
- **environments**: Diretório responsável por armazenar os arquivos de configuração de cada ambiente (desenvolvimento, homologação, produção e testes).
- **modules**: Diretório responsável por armazenar os módulos utilizados no projeto.
  - **database**: Diretório responsável por armazenar os módulos de banco de dados.
    - **dynamo**: Diretório responsável por armazenar o módulo de banco de dados DynamoDB.
    - **rds**: Diretório responsável por armazenar o módulo de banco de dados RDS.
  - **management**: Diretório responsável por armazenar os módulos de gerenciamento.
    - **eks**: Diretório responsável por armazenar o módulo de gerenciamento de cluster EKS.
  - **networks**: Diretório responsável por armazenar os módulos de redes.
    - **vpc**: Diretório responsável por armazenar o módulo de rede VPC.
  - **security**: Diretório responsável por armazenar os módulos de segurança.
    - **iam**: Diretório responsável por armazenar o módulo de segurança IAM.
    - **policies**: Diretório responsável por armazenar o módulo de segurança de políticas.
    - **security-groups**: Diretório responsável por armazenar o módulo de segurança de grupos.
    - **subnets-groups**: Diretório responsável por armazenar o módulo de segurança de sub-redes.
- **tests**: Diretório responsável por armazenar os arquivos de testes do projeto (aqui é onde são armazenados os testes unitários onde utilizados o Golang em conjunto com o Terratest).

#### Arquivos

Alguns arquivos nao foram mencionados na estruturação do projeto, mas são de extrema importância para o funcionamento do projeto (não exclua), abaixo irei detalhar cada um deles:

- **.terraform-version**: Arquivo responsável por armazenar a versão do Terraform utilizada no projeto.
- **go.mod** e **go.sum**: Arquivos responsáveis por armazenar as dependências do projeto em Golang.
- **local.sh**: Arquivo do script Shell responsavel por configurar o S3 de state local utilizando o Localstack. (para execução dos testes)
- **start.sh**: Arquivo do script Shell responsavel pela execução do prosionamento dos recursos utilizando o Terraform na AWS.

-------------------------------