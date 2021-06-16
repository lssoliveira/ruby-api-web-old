#language: pt

@login
Funcionalidade: Receber notificações
    Sendo um usuarios
    Que consome a plataforma
    Tentanto realizar o login

    Esquema do Cenario: Tentando logar
        Dado que acesso a página principal
        Quando seleciono a opção "form_authentication" no menu
            E preencho os dados de "<username>" e "<password>"
        Então devo ver a seguinte "<message>"

        Exemplos:
        | username           | password             | message                         |
        | tomsmith           | SuperSecretPassword! | You logged into a secure area!  |
        | xxx                | SuperSecretPassword! | Your username is invalid!       |
        | tomsmith           | xxx                  | Your password is invalid!       |
        | xxx                | xxx                  | Your username is invalid!       |
        |                    | SuperSecretPassword! | Your username is invalid!       |
        | tomsmith           |                      | Your password is invalid!       |
        |                    |                      | Your username is invalid!       |