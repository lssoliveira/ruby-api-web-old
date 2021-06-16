#language: pt

@active_notification
Funcionalidade: Receber notificações
    Sendo um usuarios
    Que consome a plataforma
    Pare receber notificações

    Cenario: Ativação de notificações
        Dado que acesso a página principal
        Quando clico na opção "notification_messages" no menu
        Então ativo as notificações
            E vizualizo a confirmação "Action successful"