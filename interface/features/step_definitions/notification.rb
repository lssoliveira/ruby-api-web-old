#encoding: utf-8

Quando("clico na opção {string} no menu") do |notification_messages|
  sleep 2
  @notification_messages = find("a[href$='message']").click
  sleep 2
end

Então("ativo as notificações") do
  sleep 2
  @accept_notification = find("a[href$='message']").click
end

E("vizualizo a confirmação {string}") do |message|
  sleep 2
  @confirm_notification = find("#flash").text.delete("\n×")
  expect(@confirm_notification).to eql(message)
  sleep 2
end