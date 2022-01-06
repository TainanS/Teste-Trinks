#language: pt

Funcionalidade: Login de Usuário
    Sendo que entro no site para efetuar meu login

    @logs
    Cenário: Login
        Dado que acesso a página de login
        Quando submeto o meu login com:
            | nlogin | leandrols88@gmail.com |
            | senha  | lean8967              |
            E seleciono a opção "Entrar"
        Então devo sou redirecionado a tela principal do sistema


    @tent
    Cenário: Tentativa de login com login ou senha inválidos
        Dado que acesso a página de login
        Quando submeto o meu login com: <login>, <senha>
        Então devo ver a mensagem: "<mensagem_crítica>"

        Exemplos:
            | login                   | senha        | mensagem_crítica                 |
            | "leandrogt88@gmail.com" | "lean8967"   | Login de usuário não encontrado. |
            | "leandrols88@gmail.com" | "leandro534" | Senha de login incorreta.        |

    @senha
    Cenário: Nova senha
        Dado que sou redirecionado a tela de alteração de senha
        Quando submeto minha nova senha com:
            | senha1         | Leand911 |
            | senha confirma | Leand911 |
        Então a nova senha será cadastrada

    @novasen
    Cenário: Tentativa de nova senha
        Dado que sou redirecionado a tela de alteração de senha
        Quando submeto minha nova senha com: <senha1>, <senha_confirma>
        Então devo ver a mensagem: "<mensagem_senha>"

        Exemplos:
            | senha1         | senha_confirma | mensagem_senha                                     |
            | "leandro98123" | "leandro98123" | A nova senha deve ter entre 6 a 10 caracteres.     |
            | "leandro99#$%" | "leandro99#$%" | A nova senha deve conter apenas Letras e Números.  |
            | "Leand911"     | "Leand988"     | As senhas não são iguais, troca de senha inválida. |

