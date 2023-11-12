      #language: pt

      Funcionalidade: checkout na plataforma
      Como cliente da EBAC-SHOP
      Quero fazer concluir meu cadastro
      Para finalizar minha compra


      Contexto:
      Dado que eu queira finalizar minha compra sem ter cadastro

      Cenário: Cadastro válido
      Quando eu digitar os dados em todos os campos com asteriscos e email no formato válido
      E clicar no botão "Finalizar Compra"
      Então deve exibir mensagem de sucesso "Pedido gerado com sucesso"


      Cenário: Cadastro inválido por ausência de dados
      Quando eu deixar de digitar os dados em todos os campos com asteriscos e email no formato válido
      E clicar no botão "Finalizar Compra"
      Então deve exibir mensagem de erro "Você esqueceu de de colocar o <campo>"

      Cenário: Cadastro inválido por ausência de email
      Quando eu digitar os dados em todos os campos com asteriscos e email no formato inválido
      E clicar no botão "Finalizar Compra"
      Então deve exibir mensagem de erro "digite um e-mail válido"

      Esquema de Cenário: Cadastro válido
      Quando eu <cadastrar> todos os campos
      E clicar no botão <finalizar compra>
      Então deve exibir uma <mensagem> de sucesso "Pedido gerado com sucesso"

      Exemplos:
      | cadastrar                      | finalizar compra | mensagem                    |
      | "todos os campos corretamente" | clicar no botão  | "Pedido gerado com sucesso" |