#encoding: utf-8

Dado("que acesso a página principal") do
  visit page
end

Quando("acessada a opção {string} no menu") do |add|
  sleep 2
  add = find("a[href^='/add']").click
  sleep 2
end

Então("será possível adicionar ou remover botões") do
  5.times.each do
    add_element = find("button[onclick^=add]").click
  end

  sleep 2

  3.times.each do
    del_element = find("button[onclick^=delete]", match: :first).click
  end
end