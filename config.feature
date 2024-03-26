            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de um produto

            Cenário: Adicionar produto no carrinho
            Quando eu acessar a página do <produto>
            E clicar na <cor> desejada do <produto> 
            E clicar no <tamanho> desejado do <produto>
            E inserir a quantidade <qtde_produto> do <produto> maior que zero para adicionar ao <carrinho> 
            E clicar no botão "Adicionar produto ao carrinho"
            Então deve salvar o <produto> no <carrinho> e exibir mensagem "Produto adicionado com sucesso ao carrinho"
        
            Esquema do Cenário: Produto adicionado no carrinho
            Quando eu acessar a página do <produto>
            E selecionar <cor> disponível 
            E a <tamanho> disponível
            E inserir <qtde_produto> em número inteiro maior que zero
            Então deve exigir a <mensagem> "Produto adicionado com sucesso ao carrinho"

            Exemplos:
            | produto      | cor       | tamanho | qtde | mensagem
            | "casaco"     | "laranja" |    "M"  |   1  | "Produto adicionado com sucesso ao carrinho"
            | "camiseta"   | "azul"    |    "G"  |   2  | "Produto adicionado com sucesso ao carrinho"
            | "Calça"      | "cinza"   |    "G"  |   1  | "Produto adicionado com sucesso ao carrinho"



