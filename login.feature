            #language: pt

            Funcionalidade: Login na plataforma
            Como Cliente da EBAC-Shop
            Quero me autenticar
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesso a página de login da EBAC-Shop

            Cenário: Autenticação válida
            Quando eu digitar o <usuario> válido
            E a <senha> válida
            Então deve redirecionar ao Dashboard de pedidos e exibir <mensagem>: "Olá, <usuario>, seus pedidos são:"

            Cenário: Usuário inexistente
            Quando eu digitar <usuario> inexistente
            Então deve exibir <mensagem> de alerta: "Usuário inexistente"

            Cenário: Verificação de usuário ou senha inválida
            Quando eu digitar o <usuario> ou <senha> inválida
            Então deve exibir uma <mensagem> de alerta "Usuário ou senha inválida, favor tentar novamente"

            Esquema do Cenário: Verificar autenticação inválida
            Quando eu digitar o <usuario> ou <senha> inválida
            Então deve exibir uma <mensagem> de alerta 
            
            Exemplos:
            | usuario             | senha       |                      mensagem                       |
            | "joao@ebrac.con.br" | "senha@123" | "Usuário ou senha inválida, favor tentar novamente" |
            | "joao@ebac.com.br"  | ""          | "Usuário ou senha inválida, favor tentar novamente" |

    