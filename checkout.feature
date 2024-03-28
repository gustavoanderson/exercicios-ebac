 #language: pt

            Funcionalidade: Tela de cadastro e checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro   
            Para finalizar minha compra

            Contexto:
            Dado que eu esteja na tela de cadastro antes de finalizar a compra

            Cenário: Completar cadastro
            Dado que eu esteja na tela de cadastro 
            Quando deixar de preencher algum campo obrigatório com asterisco, tais como <nome>, <sobrenome>, <email>, <pais>, <endereco>, <cep>, <telefone>
            Então exibir <mensagem> de alerta "Por favor, preencha todos os campos obrigatório"

            Esquema do Cenário: Verificação dos campos obrigatórios do cadastro
            Quando deixar de preencher algum campo obrigatório com asterisco, tais como <nome>, <sobrenome>, <email>, <pais>, <endereco>, <cep>, <telefone>
            Então exibir <mensagem> de alerta "Por favor, preencha todos os campos obrigatórios"
    
            Exemplos:
            | nome      | sobrenome   | email              | pais    | endereco      | cep     | telefone    |                 mensagem                           |                                       
            | "João"    | "Silva"     | joaosilva@ebac.com |         |               |         | 41987293028 | "Por favor, preencha todos os campos obrigatórios" |
            

            Cenário: Verificação do input de e-mail do tipo string
            Dado que eu complete todos os campos obrigatórios na tela de cadastro
            Quando eu digitar o <e-mail> com um e-mail que não seja um string válido para e-mail
            Então exibir <mensagem> de alerta "Por favor, insira um e-mail válido para concluir o cadastro"

            Esquema do Cenário: Verificação do input de e-mail do tipo string
            Dado que eu complete todos os campos obrigatórios na tela de cadastro
            Quando eu digitar o <e-mail> com um e-mail que não seja um string válido para e-mail
            Então exibir <mensagem> de alerta
    
            Exemplos:
            | nome       | sobrenome    | email               | pais     | endereco       | cep       | telefone    |                 mensagem                                      |                                          
            | "João"     | "Silva     " | joãosilva@ebac.com  |   Brasil | Rua das Flores | 82830930  | 41987293028 | "Por favor, insira um e-mail válido para concluir o cadastro" |
            | "João"     | "Silva     " | joaosilva_EBAC.com  |   Brasil | Rua das Flores | 82830930  | 41987293028 | "Por favor, insira um e-mail válido para concluir o cadastro" |
            | "João"     | "Silva     " | 1234                |   Brasil | Rua das Flores | 82830930  | 41987293028 | "Por favor, insira um e-mail válido para concluir o cadastro" |

            // note que que um dos testes há acento no e-mail; no outro há ausência do caracter especial "@", padrão em e-mails; e no último o input é de números.