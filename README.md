
# Sistema de Banco de Dados - VTT (Virtual Tabletop)

## Descrição

Este projeto consiste no desenvolvimento de um banco de dados relacional para um sistema de **VTT (Virtual Tabletop)**, focado na realização de sessões de **RPG de mesa** de forma online. A modelagem foi construída para abranger os principais elementos de uma sessão de RPG: personagens, mestres, raças, classes, habilidades, mapas, sistemas de jogo, entre outros.

O objetivo é fornecer uma estrutura robusta que permita gerenciar partidas, criar e controlar personagens, registrar ações como rolagem de dados e envio de mensagens, além de armazenar imagens associadas a personagens e mapas.

## 🗂Estrutura do Banco de Dados

O banco contém diversas tabelas inter-relacionadas para modelar as entidades de um VTT, conforme descrito a seguir:

### Principais Entidades:

- **Conta:** Cadastro de usuários, com informações pessoais, foto e último acesso.
- **Raça:** Descrição das raças disponíveis para personagens e inimigos.
- **Classe:** Estilos de jogo que definem habilidades e características dos personagens.
- **Personagem:** Entidades controladas pelos jogadores, com atributos físicos, raça, classe e habilidades.
- **Inimigo:** Entidades controladas pelo mestre, com raça, classe, habilidades e tipo.
- **Habilidade:** Capacidades especiais que personagens e inimigos podem possuir.
- **Mapa:** Ambientes onde as aventuras ocorrem, com informações sobre terreno, clima e imagem.
- **Sistema:** Conjunto de regras que rege a jogatina.
- **Aventura:** Campanhas ou histórias em que os personagens participam.
- **Mestre:** Usuário que conduz a aventura.
- **Dado:** Modela os diferentes tipos de dados usados nas rolagens.
- **Rolar:** Registra cada rolagem feita por um personagem.
- **Chat:** Modela a funcionalidade de bate-papo dentro do VTT.
- **EnviarMensagem:** Registro de mensagens enviadas pelos personagens nos chats.

## Recursos Implementados

- **Criação de todas as tabelas** com atributos adequados e tipos de dados relevantes, incluindo uso de **bytea** para armazenar imagens.
- **Relacionamentos entre tabelas** para refletir a complexidade e as interdependências do sistema.
- **Script de inserção** com **mínimo de 5 registros por tabela**, com dados descritivos e realistas.
- Uso de **`pg_read_binary_file`** para inserir imagens como binários diretamente no banco.

## Tecnologias Utilizadas

- **Banco de Dados:** PostgreSQL
- **Script SQL:** Criação e inserção de dados
- **Tipos Especiais:** bytea para imagens
- **Funcionalidades Avançadas:** uso de `pg_read_binary_file` para inserir imagens

## Como Executar

1. **Pré-requisitos:**
   - PostgreSQL instalado e configurado.
   - Acesso ao terminal `psql` ou ferramenta gráfica (PgAdmin, DBeaver).

2. **Passos:**
   - Crie o schema de trabalho com:

     ```sql
     CREATE SCHEMA trabalho;
     SET search_path = trabalho;
     ```

   - Execute o script SQL completo fornecido (`Trabalho Final Etapa 2 - Willian dos Santos Ribas.sql`).

     ```bash
     psql -U seu_usuario -d seu_banco -f "Trabalho Final Etapa 2 - Willian dos Santos Ribas.sql"
     ```

   - Certifique-se de que o arquivo `imagem.jpg` esteja acessível pelo servidor PostgreSQL, pois o script usa `pg_read_binary_file('imagem.jpg')`.

## Observações

- A modelagem considera a complexidade típica de sistemas VTT.
- O script está preparado para trabalhar com **dados binários** para representar imagens.
- Algumas tabelas incluem **atributos compostos** e **chaves estrangeiras** para assegurar integridade referencial.
- Atenção com permissões no PostgreSQL para permitir uso do `pg_read_binary_file`.

## Autor

Projeto desenvolvido por **Willian dos Santos Ribas**.
