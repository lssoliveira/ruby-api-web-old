Então("retornará os dados com a {string}") do |message|
    expect(@result['message']).to eql(message)                                                
    puts contract(@result)
end           

Então("o codigo deve retornar {string}") do |code|
    expect(@result.response.code).to eql code
end 