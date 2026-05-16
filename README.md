# 📚 Urban-Event 

<br/>


[![License](https://img.shields.io/badge/license-MIT-green.svg?style=flat)](LICENSE)

<br/>

Urban-Event é uma API REST desenvolvida com Spring Boot que gerencia eventos e cidades. 
O sistema permite cadastrar cidades e associar eventos a elas, seguindo uma relação de muitos eventos para uma cidade (N-1).
O sistema conta com controle de acesso por perfis de usuário, validação de dados e paginação de resultados.

<br/>


<p align="center">
  <img width="540" height="172" 
    alt="Modelo de domínio " src="https://github.com/user-attachments/assets/852c0c42-764a-4ec2-8ae4-65e2184398c0" />
  
</p>


<br/>

**Entidades**

O sistema é composto pelas seguintes entidades:

City — representa uma cidade, com id e nome

Event — representa um evento, com id, nome, data, URL e a cidade onde ocorre

User — usuário do sistema, com email e senha

Role — perfil de acesso do usuário (CLIENT ou ADMIN)

<br/>

**Funcionalidades**

Listagem de todas as cidades ordenadas por nome

Cadastro de novas cidades

Listagem paginada de eventos

Cadastro de novos eventos vinculados a uma cidade


<br/>


**Segurança**

O sistema utiliza OAuth2 com JWT para autenticação e autorização, com dois perfis de acesso:

ROLE_CLIENT — pode visualizar cidades e eventos, e cadastrar novos eventos

ROLE_ADMIN — possui acesso total, incluindo o cadastro de novas cidades


<br/>


**Tecnologias Utilizadas**

Java 17

Spring Boot 2.7

Spring Security com OAuth2

Spring Data JPA

Banco de dados H2 (em memória para testes)

Bean Validation

Maven


<br/>


**Como Rodar o Projeto**


<br/>


Pré-requisitos

- Java 17 instalado

- Maven instalado

- Insomnia ou Postman para testar os endpoints


<br/>


**Clone o repositório**

<br/>

git clone https://github.com/seu-usuario/bds04.git

<br/>

**Entre na pasta do projeto**
cd bds04

<br/>

**Rode o projeto**
./mvnw spring-boot:run

<br/>

A aplicação estará disponível em http://localhost:8080.

O console do H2 estará disponível em http://localhost:8080/h2-console com as configurações:

JDBC URL: jdbc:h2:mem:testdb
Username: sa
Password: (vazio)

<br/>

**Autenticação**

O sistema utiliza OAuth2 com JWT. Para obter o token, faça uma requisição POST para /oauth/token:

No Postman ou Insômnia coloque em 

Headers

Authorization: Basic bXljbGllbnRpZDpte==

Body (Form URL Encoded):

grant_type=password

username=ana@gmail.com

password=123456

<br/>

O access_token retornado deve ser usado nas requisições protegidas no header:

Authorization: Bearer {access_token}


<br/>


**Usuários Disponíveis**

| Usuário | Email | Senha | Perfil |
|---------|-------|-------|--------|
| Ana | ana@gmail.com | 123456 | ROLE_CLIENT |
| Bob | bob@gmail.com | 123456 | ROLE_ADMIN |


<br/>


**Endpoints**

Cities

| Método | Endpoint | Descrição | Acesso |
|--------|----------|-----------|--------|
| GET | `/cities` | Lista todas as cidades ordenadas por nome | Público |
| POST | `/cities` | Cadastra uma nova cidade | ADMIN |


<br/>

Regras de Validação

<br/>

**City**

name — obrigatório, não pode ser em branco

<br/>

**Event**

name — obrigatório, não pode ser em branco
date — deve ser uma data futura
cityId — obrigatório

<br/>

**Controle de Acesso**

| Endpoint | Sem token | CLIENT | ADMIN |
|----------|-----------|--------|-------|
| `GET /cities` | ✅ 200 | ✅ 200 | ✅ 200 |
| `POST /cities` | ❌ 401 | ❌ 403 | ✅ 201 |
| `GET /events` | ✅ 200 | ✅ 200 | ✅ 200 |
| `POST /events` | ❌ 401 | ✅ 201 | ✅ 201 |


<br/>


**Casos de Teste**

<br/>

**EventController**

- `POST /events` deve retornar **401 Unauthorized** para usuário não logado  
- `POST /events` deve retornar **201 Created** para CLIENT logado e dados corretos  
- `POST /events` deve retornar **201 Created** para ADMIN logado e dados corretos  
- `POST /events` deve retornar **422 Unprocessable Entity** para ADMIN logado e nome em branco  
- `POST /events` deve retornar **422 Unprocessable Entity** para ADMIN logado e data no passado  
- `POST /events` deve retornar **422 Unprocessable Entity** para ADMIN logado e cidade nula  
- `GET /events` deve retornar **200 OK** com página de recursos


<br/>


**CityController** 

- `POST /cities` deve retornar **401 Unauthorized** para usuário não logado  
- `POST /cities` deve retornar **403 Forbidden** para CLIENT logado  
- `POST /cities` deve retornar **201 Created** para ADMIN logado e dados corretos  
- `POST /cities` deve retornar **422 Unprocessable Entity** para ADMIN logado e nome em branco  
- `GET /cities` deve retornar **200 OK** com todos os recursos ordenados por nome


<br/>

# Agradecimentos / Referências: 


Dev - Superior Escola de Tecnologia


<br>


----------


# Autora:

Sheila M. M. L. Silva 

https://www.linkedin.com/in/sheilasheila/


