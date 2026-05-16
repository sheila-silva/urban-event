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


<br/>






