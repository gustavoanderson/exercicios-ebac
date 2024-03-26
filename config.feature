            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de um produto

            Cenário: Adicionar produto no carrinho
            Dado que eu esteja na página do <produto>
            Quando eu escolher a <cor>, o <tamanho> e a <qtde> desejada do <produto> 
            E clicar no botão "Adicionar produto ao carrinho"
            Então deve salvar o <produto> no carrinho e exibir <mensagem> "Produto adicionado com sucesso ao carrinho"
        
            Esquema do Cenário: Produto adicionado no carrinho
            Dado que eu esteja na página do <produto>
            Quando eu escolher a <cor>, o <tamanho> e a <qtde> desejada do <produto> 
            E clicar no botão "Adicionar produto ao carrinho"
            Então deve salvar o <produto> no carrinho e exibir <mensagem> "Produto adicionado com sucesso ao carrinho"

            Exemplos:
            | produto      | cor       | tamanho | qtde | mensagem
            | "casaco"     | "laranja" |    "M"  |   1  | "Produto adicionado com sucesso ao carrinho"
            | "camiseta"   | "azul"    |    "G"  |   2  | "Produto adicionado com sucesso ao carrinho"
            | "Calça"      | "cinza"   |    "P"  |   1  | "Produto adicionado com sucesso ao carrinho"



