#language: pt

@user_info
Funcionalidade: Exibir informações de usuários
    Sendo um usuarios
    Que consome a plataforma
    Para visualizar suas informações

    Cenario: Exibindo informações do perfil

        Dado que acesso a página principal
        Quando acessar a opção "hovers" no menu
        Então visualizo informações de perfils
            E acesso perfils