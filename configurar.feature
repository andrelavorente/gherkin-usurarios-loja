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

      Cenário: produto no carrinho inválido por tipo cor
      Quando eu deixar de selecionar a cor e selecionar o tamanho e a quantidade
      E escolher a quantidade do produto "<=10"
      Então o deve haver uma mensagem "Selecione a cor da roupa"

      Cenário: produto no carrinho inválido por tipo tamanho
      Quando eu deixar de selecionar o tamanho e selecionar a cor e a quantidade
      E escolher a quantidade do produto "1> E <=10"
      Então o deve haver uma mensagem "Selecione o tamanho da roupa"

      Cenário: produto no carrinho inválido por tipo quantidade
      Quando eu selecionar  a cor e o tamanho
      E escolher a quantidade do produto "0 OU >10"
      Então o deve haver uma mensagem "Selecione a quantidade válida de roupa"

      Cenário: produto no carrinho inválido por tipo cor e tamanho
      Quando eu deixar de selecionar a cor e o tamanho
      E escolher a quantidade do produto "1> E <=10"
      Então o deve haver uma mensagem "Selecione a cor e o tamanho da(s) roupa(s)"

      Cenário: produto no carrinho inválido por tipo cor e quantidade
      Quando eu deixar de selecionar a cor e selecionar o tamanho
      E escolher a quantidade do produto "0 OU >10"
      Então o deve haver uma mensagem "Selecione a cor e a quantidade da(s) roupa(s)"

      Cenário: produto no carrinho inválido por tipo tamanho e quantidade
      Quando eu deixar de selecionar o tamanho e selecionar a cor
      E escolher a quantidade do produto "0 OU >10"
      Então o deve haver uma mensagem "Selecione o tamanho e a quantidade da(s) roupa(s)"

      Cenário: Limpar produtos
      Quando eu quiser que retorne ao estado inicial
      E eu clicar no botão "Limpar"
      Então o carrinho volta ao estado inicial

      Esquema de Cenário: colocar produto no carrinho
      Quando eu adicionar <produto>
      E escolher o <tamanho> e a <quantidade>
      Então deve exibir a <mensagem> de sucesso

      Exemplos:
      | produto    | tamanho | quantidade | mensagem                           |
      | "camiseta" | "G"     | "2"        | "Produto no carrinho com sucesso!" |
      | "calça"    | "42"    | "1"        | "Produto no carrinho com sucesso!" |
      | "Jaqueta"  | "G"     | "1"        | "Produto no carrinho com sucesso!" |
      | "cueca"    | "G"     | "5"        | "Produto no carrinho com sucesso!" |