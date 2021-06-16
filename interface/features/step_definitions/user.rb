#encoding: utf-8

Quando("acessar a opção {string} no menu") do |hovers|
  sleep 2
  @hovers = find("a[href^='/hovers']").click
  sleep 2
end

Então("visualizo informações de perfils") do
  @view_profile2 = all("img[src$='avatar-blank.jpg']")[1]
  @view_profile2.hover
  sleep 2
end

E("acesso perfils") do
  @access_profile2 = find("a[href$='/2']").click
  sleep 2
end