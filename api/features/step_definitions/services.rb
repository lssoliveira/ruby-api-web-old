Dado("que possua dados validos") do                                           

end                                                                             

Quando("executar o GET no serviço") do                                          
    @result = HTTParty.get(
        "http://dummy.restapiexample.com/api/v1/employees",
    )
end                                                                             
       
Quando("executar o GET by {string} no serviço") do |id|
    id = @id                                          
    @result = HTTParty.get(
        "http://dummy.restapiexample.com/api/v1/employees/#{@id}",
    )
end  

Dado("que possua dados validos para criar ou editar:") do |table|                                           
    @table  = table.rows_hash
    @id     = @table['id']

    if @table['name'] = 'randon_name'
        @name = Faker::Name.name
    else 
        @name = @table['name']
    end

    if @table['salary'] = 'randon_salary'
        @salary = rand(1000..100000)
    else 
        @salary = @table['salary']
    end

    if @table['age'] = 'randon_age'
        @age = rand(18..90)
    else 
        @age = @table['randon_age']
    end
end                                                                                                                                                                                  
                                                                    
Quando("executar o POST no serviço") do
    @body = {name: @name, salary: @salary, age: @age}
    puts request(@body)

    @result = HTTParty.post(
    "http://dummy.restapiexample.com/api/v1/create",
        body: @body.to_json
    )
    puts contract(@result)
end

Quando("executar o PUT no serviço") do
    @body = {name: @name, salary: @salary, age: @age}
    puts request(@body)

    @result = HTTParty.put(
    "http://dummy.restapiexample.com/api/v1/update/#{@id}",
        body: @body.to_json
    )
    puts contract(@result)
end

Dado("que possua um id valido") do                                         
    @name = Faker::Name.name
    @salary = rand(1000..100000)
    @age = rand(18..90)
    
    @body = {name: @name, salary: @salary, age: @age}

    @result_create = HTTParty.post(
    "http://dummy.restapiexample.com/api/v1/create",
        body: @body.to_json
    )
    puts contract(@result_create)
    
    @id = @result_create['data']['id']
end      

Quando("executar o DELETE no serviço") do
    @result = HTTParty.put(
    "http://dummy.restapiexample.com/api/v1/delete/#{@id}",
        body: @body.to_json
    )
    puts contract(@result)
end