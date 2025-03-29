# Teste de Nivelamento

Este repositório contém os arquivos e a descrição dos exercícios do Teste de Nivelamento. Os exercícios envolvem o uso das seguintes tecnologias: Python, MySQL 8, Vue.js e outras ferramentas.

## Estrutura de Diretórios

O repositório está organizado da seguinte forma:

```
|-- Diretorio Teste 1  
|-- Diretorio Teste 2  
|-- Diretorio Teste 3  
|-- Diretorio Teste 4  
|-- Diretorio arquivos  
```

- **Diretorio Teste 1**: Contém arquivos relacionados à primeira questão do teste.
- **Diretorio Teste 2**: Contém arquivos relacionados à segunda questão do teste.
- **Diretorio Teste 3**: Contém arquivos para a terceira questão.
- **Diretorio Teste 4**: Contém arquivos para a quarta questão.
- **Diretorio arquivos**: Contém arquivos usados no Teste 3 e Teste 4 para problemas específicos.

## Tecnologias Utilizadas

- **Python 3.13**
- **MySQL 8**
- **Vue.js**
- **npm** (para instalar dependências de Vue.js e Axios)

## Descrição dos Exercícios

### Questão 1

- O exercício consiste em **baixar os arquivos fornecidos usando python**, compactá-los em formato `.zip` e armazená-los na pasta `downloads`. Esses arquivos serão utilizados na Questão 2.

### Questão 2

- O exercício consiste em **transformar o anexo 1 da Questão 1 no formato `.csv`** e, em seguida, compactar esse arquivo no formato `.zip`.

### Questão 3

- O exercício consiste em **importar os arquivos `.csv` para a base de dados MySQL** e realizar uma **query analítica** sobre os dados.
  
#### Problemas Possíveis:

- Ao executar o script `import.sql`, pode ocorrer um erro de execução. Isso acontece porque os arquivos `.csv` precisam estar em uma pasta que o MySQL tenha permissão para acessar. Caso ocorra esse erro, basta mover os arquivos para a pasta `C:\ProgramData\MySQL\MySQL Server 8.0\Uploads`. Após isso, a importação poderá ser realizada sem problemas.

### Questão 4

- O exercício consiste em **criar uma rota em um servidor Python usando o Flask**, um microframework leve e fácil de usar.
- A configuração do Flask utiliza **CORS** (Cross-Origin Resource Sharing) para permitir que o Vue.js (que serve como interface) interaja com a API.
- A interface permite que o usuário **pesquise por nome de operadora** e visualize uma lista de operadoras que correspondem ao nome fornecido.

---

