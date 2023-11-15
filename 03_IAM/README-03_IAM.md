# README-03_IAM.md

IAM (Identity and Access Management) Users e Groups são componentes-chave no serviço de gerenciamento de identidade e acesso oferecido pela Amazon Web Services (AWS). Eles desempenham um papel fundamental no controle e na organização das permissões e acessos aos recursos da AWS. Vamos entender o que são Users e Groups no contexto do IAM:

### IAM Users:
Um usuário no IAM representa uma pessoa ou um serviço que interage com a AWS. Cada usuário tem suas próprias credenciais únicas (como nome de usuário e senha ou chave de acesso) e pode ser associado a diferentes permissões. Criar usuários individuais é uma prática recomendada para atribuir permissões específicas a cada pessoa ou serviço que precisa interagir com recursos na AWS. Por exemplo, você pode criar um usuário para um desenvolvedor e atribuir as permissões necessárias apenas para os recursos relevantes ao desenvolvimento.

### IAM Groups:
Um grupo é um conjunto lógico de usuários que compartilham as mesmas permissões. Em vez de atribuir permissões a cada usuário individualmente, você pode criar um grupo, adicionar usuários a esse grupo e, em seguida, atribuir permissões ao grupo. Isso simplifica a administração, pois você pode gerenciar as permissões de um conjunto de usuários de uma vez, facilitando a manutenção e o controle de acesso. Por exemplo, você pode ter um grupo chamado "Administradores" que possui permissões amplas e adicionar usuários administrativos a esse grupo.

### Principais Benefícios:

1. **Controle Fino de Acesso:** Através do IAM, você pode definir permissões específicas para usuários e grupos, garantindo um controle fino sobre quem pode acessar quais recursos.

2. **Princípio do Menor Privilégio:** Ao atribuir permissões, é uma prática recomendada seguir o princípio do menor privilégio, concedendo apenas as permissões necessárias para realizar determinadas tarefas.

3. **Organização e Manutenção Simplicada:** O uso de grupos facilita a organização de usuários e a atribuição consistente de permissões, simplificando a manutenção e administração do IAM.

4. **Rastreamento de Atividades:** O IAM fornece recursos de auditoria, permitindo rastrear quem fez o quê e quando dentro da sua infraestrutura AWS.

Ao utilizar IAM Users e Groups de maneira eficaz, você pode garantir a segurança dos seus recursos na AWS, concedendo acesso apenas a usuários autorizados e seguindo as melhores práticas de segurança.

Certamente! O AWS CLI (Command Line Interface) oferece uma variedade de comandos para interagir com o IAM (Identity and Access Management) da AWS. Abaixo estão alguns exemplos de comandos relacionados a IAM Users e Groups:

### 1. **Criar um Usuário:**
```bash
aws iam create-user --user-name NomeDoUsuario
```

### 2. **Listar Usuários:**
```bash
aws iam list-users
```

### 3. **Criar um Grupo:**
```bash
aws iam create-group --group-name NomeDoGrupo
```

### 4. **Listar Grupos:**
```bash
aws iam list-groups
```

### 5. **Adicionar Usuário a um Grupo:**
```bash
aws iam add-user-to-group --user-name NomeDoUsuario --group-name NomeDoGrupo
```

### 6. **Criar Credenciais de Acesso para um Usuário:**
```bash
aws iam create-access-key --user-name NomeDoUsuario
```

### 7. **Listar Credenciais de Acesso de um Usuário:**
```bash
aws iam list-access-keys --user-name NomeDoUsuario
```

### 8. **Atribuir Política a um Usuário:**
```bash
aws iam attach-user-policy --user-name NomeDoUsuario --policy-arn arn:aws:iam::aws:policy/NomeDaPolitica
```

### 9. **Desvincular Política de um Usuário:**
```bash
aws iam detach-user-policy --user-name NomeDoUsuario --policy-arn arn:aws:iam::aws:policy/NomeDaPolitica
```

### 10. **Deletar Grupo:**
```bash
aws iam delete-group --group-name NomeDoGrupo
```

### 11. **Deletar Usuário:**
```bash
aws iam delete-user --user-name NomeDoUsuario
```

Estes são apenas alguns exemplos básicos. Lembre-se de substituir "NomeDoUsuario" e "NomeDoGrupo" pelos valores desejados. Além disso, ao criar ou modificar recursos no IAM, certifique-se de entender as implicações de segurança e seguir as práticas recomendadas. A manipulação inadequada do IAM pode resultar em perda de acesso a recursos críticos ou em potenciais vulnerabilidades de segurança.

Certamente! Aqui estão alguns exemplos de comandos AWS CLI para interagir com IAM e políticas (policies) relacionadas a buckets S3, instâncias EC2 e CloudWatch:

### 1. **Criar uma Política para Acesso S3:**
```bash
aws iam create-policy --policy-name S3FullAccess --policy-document file://s3-policy.json
```
Conteúdo do arquivo `s3-policy.json`:
```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "s3:*",
      "Resource": "*"
    }
  ]
}
```

### 2. **Anexar uma Política a um Usuário para Acesso S3:**
```bash
aws iam attach-user-policy --user-name NomeDoUsuario --policy-arn arn:aws:iam::SuaConta:policy/S3FullAccess
```

### 3. **Criar uma Política para Acesso EC2:**
```bash
aws iam create-policy --policy-name EC2FullAccess --policy-document file://ec2-policy.json
```
Conteúdo do arquivo `ec2-policy.json`:
```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ec2:*",
      "Resource": "*"
    }
  ]
}
```

### 4. **Anexar uma Política a um Grupo para Acesso EC2:**
```bash
aws iam attach-group-policy --group-name NomeDoGrupo --policy-arn arn:aws:iam::SuaConta:policy/EC2FullAccess
```

### 5. **Criar uma Política para Acesso CloudWatch:**
```bash
aws iam create-policy --policy-name CloudWatchFullAccess --policy-document file://cloudwatch-policy.json
```
Conteúdo do arquivo `cloudwatch-policy.json`:
```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "cloudwatch:*",
      "Resource": "*"
    }
  ]
}
```

### 6. **Anexar uma Política a um Grupo para Acesso CloudWatch:**
```bash
aws iam attach-group-policy --group-name NomeDoGrupo --policy-arn arn:aws:iam::SuaConta:policy/CloudWatchFullAccess
```

Lembre-se de substituir `NomeDoUsuario`, `NomeDoGrupo` e `SuaConta` pelos valores específicos da sua configuração. Além disso, esses exemplos fornecem permissões amplas; na prática, você deve seguir o princípio do menor privilégio e limitar as permissões apenas ao necessário para suas operações. Certifique-se de entender as implicações de segurança ao conceder permissões.

# ******** HANDs on PYTHON ********

AWS CLI com Python:
Você também pode executar comandos AWS CLI diretamente em scripts Python usando a biblioteca subprocess. Por exemplo:

python
Copy code
import subprocess

# Listar Usuários
subprocess.run(['aws', 'iam', 'list-users'])

# Criar Novo Usuário
subprocess.run(['aws', 'iam', 'create-user', '--user-name', 'MeuNovoUsuario'])
Lembre-se de configurar suas credenciais AWS no ambiente antes de executar esses comandos. Você pode fazer isso usando aws configure ou configurando variáveis de ambiente, dependendo do seu caso de uso.

# ******** HANDs on ********
## Exemplos com localstack
**Passos preliminares:**

1. **Instale o LocalStack:**
   Você pode instalar o LocalStack usando o seguinte comando:
   ```bash
   pip install localstack
   ```

2. **Inicie o LocalStack:**
   Inicie o LocalStack em um terminal usando o comando:
   ```bash
   localstack start
   ```

**Exemplo de Exercício Prático:**

Vamos realizar as seguintes ações:

1. Criar um usuário no IAM usando o AWS CLI.
2. Criar um grupo no IAM usando o AWS CLI.
3. Adicionar o usuário recém-criado ao grupo.
4. Listar os grupos aos quais o usuário pertence.

**Comandos:**

1. **Criar Usuário:**
   ```bash
   aws --endpoint-url=http://localhost:4566 iam create-user --user-name MeuNovoUsuario
   ```

2. **Criar Grupo:**
   ```bash
   aws --endpoint-url=http://localhost:4566 iam create-group --group-name MeuNovoGrupo
   ```

3. **Adicionar Usuário ao Grupo:**
   ```bash
   aws --endpoint-url=http://localhost:4566 iam add-user-to-group --group-name MeuNovoGrupo --user-name MeuNovoUsuario
   ```

4. **Listar Grupos do Usuário:**
   ```bash
   aws --endpoint-url=http://localhost:4566 iam list-groups-for-user --user-name MeuNovoUsuario
   ```

**Nota:** Os comandos acima usam o `--endpoint-url` para apontar para o endpoint do LocalStack. Certifique-se de ter o LocalStack em execução antes de executar esses comandos.

Este exercício prático permite que você experimente a criação de usuários e grupos no IAM usando o LocalStack, proporcionando uma experiência local para o desenvolvimento e testes.

-------

LocalStack é uma ferramenta que permite simular serviços da AWS localmente para desenvolvimento e teste. Aqui estão alguns exemplos de comandos usando o LocalStack para IAM e políticas relacionadas a buckets S3, instâncias EC2 e CloudWatch:

### 1. **Criar uma Política para Acesso S3 no LocalStack:**
```bash
aws --endpoint-url=http://localhost:4566 iam create-policy --policy-name S3FullAccess --policy-document file://s3-policy.json
```
Conteúdo do arquivo `s3-policy.json`:
```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "s3:*",
      "Resource": "*"
    }
  ]
}
```

### 2. **Criar um Usuário e Anexar uma Política para Acesso S3 no LocalStack:**
```bash
aws --endpoint-url=http://localhost:4566 iam create-user --user-name NomeDoUsuario
aws --endpoint-url=http://localhost:4566 iam attach-user-policy --user-name NomeDoUsuario --policy-arn arn:aws:iam::SuaConta:policy/S3FullAccess
```

### 3. **Criar uma Política para Acesso EC2 no LocalStack:**
```bash
aws --endpoint-url=http://localhost:4566 iam create-policy --policy-name EC2FullAccess --policy-document file://ec2-policy.json
```
Conteúdo do arquivo `ec2-policy.json`:
```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ec2:*",
      "Resource": "*"
    }
  ]
}
```

### 4. **Criar um Grupo e Anexar uma Política para Acesso EC2 no LocalStack:**
```bash
aws --endpoint-url=http://localhost:4566 iam create-group --group-name NomeDoGrupo
aws --endpoint-url=http://localhost:4566 iam attach-group-policy --group-name NomeDoGrupo --policy-arn arn:aws:iam::SuaConta:policy/EC2FullAccess
```

### 5. **Criar uma Política para Acesso CloudWatch no LocalStack:**
```bash
aws --endpoint-url=http://localhost:4566 iam create-policy --policy-name CloudWatchFullAccess --policy-document file://cloudwatch-policy.json
```
Conteúdo do arquivo `cloudwatch-policy.json`:
```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "cloudwatch:*",
      "Resource": "*"
    }
  ]
}
```

### 6. **Criar um Grupo e Anexar uma Política para Acesso CloudWatch no LocalStack:**
```bash
aws --endpoint-url=http://localhost:4566 iam create-group --group-name NomeDoGrupo
aws --endpoint-url=http://localhost:4566 iam attach-group-policy --group-name NomeDoGrupo --policy-arn arn:aws:iam::SuaConta:policy/CloudWatchFullAccess
```

Lembre-se de configurar o `--endpoint-url` para o LocalStack e substituir `NomeDoUsuario`, `NomeDoGrupo` e `SuaConta` pelos valores específicos da sua configuração. Certifique-se de que o LocalStack esteja em execução e que você tenha o AWS CLI configurado para apontar para ele.

**** DYNAMODB

Certamente! Aqui estão exemplos de comandos usando LocalStack para IAM e políticas relacionadas ao DynamoDB, incluindo a criação de uma tabela no DynamoDB:

### 1. **Criar uma Política para Acesso DynamoDB no LocalStack:**
```bash
aws --endpoint-url=http://localhost:4566 iam create-policy --policy-name DynamoDBFullAccess --policy-document file://dynamodb-policy.json
```
Conteúdo do arquivo `dynamodb-policy.json`:
```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "dynamodb:*",
      "Resource": "*"
    }
  ]
}
```

### 2. **Criar um Usuário e Anexar uma Política para Acesso DynamoDB no LocalStack:**
```bash
aws --endpoint-url=http://localhost:4566 iam create-user --user-name NomeDoUsuario
aws --endpoint-url=http://localhost:4566 iam attach-user-policy --user-name NomeDoUsuario --policy-arn arn:aws:iam::SuaConta:policy/DynamoDBFullAccess
```

### 3. **Criar uma Tabela no DynamoDB no LocalStack:**
```bash
aws --endpoint-url=http://localhost:4566 dynamodb create-table --table-name NomeDaTabela --attribute-definitions AttributeName=ID,AttributeType=S --key-schema AttributeName=ID,KeyType=HASH --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5
```

### 4. **Criar um Grupo e Anexar uma Política para Acesso DynamoDB no LocalStack:**
```bash
aws --endpoint-url=http://localhost:4566 iam create-group --group-name NomeDoGrupo
aws --endpoint-url=http://localhost:4566 iam attach-group-policy --group-name NomeDoGrupo --policy-arn arn:aws:iam::SuaConta:policy/DynamoDBFullAccess
```

Lembre-se de configurar o `--endpoint-url` para o LocalStack e substituir `NomeDoUsuario`, `NomeDoGrupo`, `SuaConta` e `NomeDaTabela` pelos valores específicos da sua configuração. Certifique-se de que o LocalStack esteja em execução e que você tenha o AWS CLI configurado para apontar para ele.


