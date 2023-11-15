                  #language: pt

                  Funcionalidade: Configurar produto
                  Como cliente da EBAC-SHOP
                  Quero Configurar meu produto de acordo com meu tamanho e gosto
                  E escolher a quantidade
                  Para depois inserir no carrinho

                  Contexto:
                  Dado que eu acesse o EBAC-SHOP como cliente

                  Cenário: produto no carrinho válido
                  Quando eu selecionar a cor, o tamanho e a quantidade
                  E escolher a quantidade do produto "<=10"
                  Então o produto deve ser inserido no carrinho e exibir a mensagem "Produto no carrinho com sucesso!"

                  Cenário: Limpar produtos
                  Quando eu quiser que retorne ao estado inicial
                  E eu clicar no botão "Limpar"
                  Então o carrinho volta ao estado inicial

                  Esquema de Cenário: produto inválido no carrinho
                  Quando eu adicionar o <produto>
                  E não escolher o <tamanho> ou <quantidade> ou <cor>
                  Então deve exibir a <mensagem> de erro por ausência de algum requisito

                  Exemplos:
                  | produto    | tamanho | quantidade | cor      | mensagem                                                         |
                  | "camiseta" | null    | "2"        | "azul"   | "O tamanho do produto deve ser definido!"                        |
                  | "calça"    | "42"    | null       | "preto"  | "A quantidade do produto deve ser definida!"                     |
                  | "calça"    | "42"    | "1"        | null     | "A cor do produto deve ser definida!"                            |
                  | "Jaqueta"  | null    | null       | "branco" | "O tamanho e a quantidade do produto devem ser definidos!"       |
                  | "camiseta" | "G"     | null       | null     | "A quantidade e a cor do produto devem ser definidos!"           |
                  | "calça"    | null    | "3"        | null     | "O tamanho e a cor do produto devem ser definidos!"              |
                  | "cueca"    | null    | null       | null     | ""O tamanho, cor e a quantidade do produto devem ser definidos!" |

