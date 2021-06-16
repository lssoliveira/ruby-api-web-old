#encoding: utf-8

Quando("seleciono a opção {string} no menu") do |form_authentication|
  sleep 2
  @form_authentication = find("a[href$='login']").click
  sleep 2
end

E("preencho os dados de {string} e {string}") do |username, password|        
  @username = find("#username").send_keys(username)
  @password = find("#password").send_keys(password)
  sleep 2
  @button_login = find("i[class$='sign-in']").click
end                                                                            
                                                                               
Então("devo ver a seguinte {string}") do |message|
  sleep 2
  @result_login = find("#flash").text.delete("\n×")
  expect(@result_login).to eql(message)
end                                                                            