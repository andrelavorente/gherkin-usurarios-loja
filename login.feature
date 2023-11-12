      #language: pt

      Funcionalidade: Login na plataforma
      Como cliente da EBAC-SHOP
      Quero Fazer o login na plataforma
      Para visualizar meus pedidos

      Contexto:
      Dado que eu acesse a parte de autenticação EBAC-SHOP

      Cenário: Autenticação válida
      Quando eu digitar o usuário "joao@email.com"
      E a senha "senha@123"
      Então deve exibir mensagem de boas vindas "Olá, João"

      Cenário: Usuário inexistente
      Quando eu digitar o usuário "1234@email.com"
      E a senha "senha@123"
      Então deve exibir mensagem de Alerta "Usuário Inexistente"

      Cenário: Usuário com senha inválida
      Quando eu digitar o usuário "joao@email.com"
      E a senha "senha@321"
      Então deve exibir mensagem de Alerta "Senha inválida"

      Esquema de cenário: Autenticar multiplos usuários
      Quando eu digitar o <usuario>
      E a <senha>
      Então deve exibir a <mensagem> de sucesso

      Exemplos:
      | usuario           | senha       | mensagem     |
      | "joao@email.com"  | "senha@123" | "Olá, João"  |
      | "maria@email.com" | "senha@123" | "Olá, Maria" |
      | "andre@email.com" | "senha@123" | "Olá, André" |
      | "julia@email.com" | "senha@123" | "Olá, Julia" |
