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

            Cenário: Usuário ou senha inválida
            Quando eu digitar o <usuario> ou <senha> inválida
            Então deve exibir uma <mensagem> de alerta "Usuário ou senha inválidos, favor tentar novamente"

            Esquema do Cenário: Verificar autenticação inválida
            Quando eu digitar o <usuario> 
            E a <senha>
            Então deve exigir a <mensagem> de tentativa inválida "Usuário ou senha inválida, favor tentar novamente"

            Exemplos:
            | usuario            | senha       | mensagem    |
            | "joao@ebac.com.br" | "senha@123" | "Olá, João, seus pedidos são:" |
            | "joao@ebrac.con.br" | "senha@123" | "Usuário inexistente!" |
            | "joao@ebac.com.br" | "" | "Usuário ou senha inválida" |

            // 1º neste esquema de cenário, pude testar um cenário de autenticação válida, porque login e senha estão corretos //
            // 2º outro de usuário inexistente - pois o usuário do joão está digitado erroneamente //
            // 3º também pude testar o cenário de autenticação inválida, visto que a senha foi digitada incorretamente, visto que foi deixada em branco //