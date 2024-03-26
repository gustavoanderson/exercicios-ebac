 #language: pt

            Funcionalidade: Tela de cadastro e checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro   
            Para finalizar minha compra

            Contexto:
            Dado que eu finalize a compra de um produto sem estar logado na minha conta da EBAC-Shop

            Cenário: Completar cadastro antes do checkout
            Quando eu finalizar a compra no <carrinho>
            Dado que eu não vou estar logado na EBAC-Shop ao finalizar a compra 
            Então exibir tela de <cadastro> do <usuario>
            E obrigar o preenchimento de todos os dados obrigatórios com "*" para o <cadastro>
            E obrigar o input do <e-mail> com um e-mail válido que respeite o formato de dado do tipo string
            Então permitir a finalização do cadastro exibindo a mensagem "Obrigado por se cadastrar conosco!"
            E prosseguir à tela de checkout para informações de pagamento 

            Cenário: Verificação dos campos obrigatórios do cadastro
            Quando eu não digitar algum dos campos obrigatórios do <cadastro>
            Então exibir mensagem de alerta "Por favor, preencha todos os campos obrigatórios"

            Esquema do Cenário: Verificação dos campos obrigatórios do cadastro
            Quando eu não digitar algum dos campos obrigatórios do <cadastro>
            Então exibir mensagem de alerta "Por favor, preencha todos os campos obrigatórios"
    
            Exemplos:
            | Nome*      | Sobrenome*   | E-mail*             | País*    | Endereço*      | CEP*     | Telefone*    |                 mensagem                           |                                       
            | "João"     | "Silva     " | joaosilva@ebac.com  |          |                |          | 41987293028  | "Por favor, preencha todos os campos obrigatórios" |
            


            Cenário: Verificação do input de e-mail do tipo string
            Quando eu digitar o <e-mail> com um e-mail que não seja um string válido para e-mail
            Então exibir mensagem de alerta "Por favor, insira um e-mail válido para concluir o cadastro"

            Esquema do Cenário: Verificação do input de e-mail do tipo string
            Quando eu digitar todos os campos obrigatórios na tela de <cadastro>
            E o campo de <e-mail> estiver com um e-mail inválido
            Então exibir mensagem "Por favor, insira um e-mail válido para concluir o cadastro"
    
            Exemplos:
            | Nome*      | Sobrenome*   | E-mail*             | País*    | Endereço*      | CEP*      | Telefone*   |                 mensagem                                      |                                          
            | "João"     | "Silva     " | joãosilva@ebac.com  |   Brasil | Rua das Flores | 82830930  | 41987293028 | "Por favor, insira um e-mail válido para concluir o cadastro" |
            | "João"     | "Silva     " | joaosilva_EBAC.com  |   Brasil | Rua das Flores | 82830930  | 41987293028 | "Por favor, insira um e-mail válido para concluir o cadastro" |
            | "João"     | "Silva     " | 1234                |   Brasil | Rua das Flores | 82830930  | 41987293028 | "Por favor, insira um e-mail válido para concluir o cadastro" |

            // note que que um dos testes há acento no e-mail; no outro há ausência do caracter especial "@", padrão em e-mails; e no último o input é de números.