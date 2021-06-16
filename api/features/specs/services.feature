# language: pt
@get
Funcionalidade: Realizar chamadas de API

@get
# GET (http://dummy.restapiexample.com/api/v1/employees)
Cenário: Buscar dados
  Dado que possua dados validos
  Quando executar o GET no serviço 
  Então retornará os dados com a "Successfully! All records has been fetched." 
    E o codigo deve retornar "200"

@get_id
# GET BY ID (http://dummy.restapiexample.com/api/v1/employee/id)
Cenário: Buscar dados com id
  Dado que possua dados validos
  Quando executar o GET by "71" no serviço
  Então retornará os dados com a "Successfully! All records has been fetched." 
    E o codigo deve retornar "200"

@post
# POST (http://dummy.restapiexample.com/api/v1/create)
Esquema do Cenário: Criar
  Dado que possua dados validos para criar:
  | name   | <name>   |
  | salary | <salary> |
  | age    | <age>    |
  Quando executar o POST no serviço
  Então retornará os dados com a "<message>" 
    E o codigo deve retornar "<code>"
  Exemplos:
  | name           | salary        | age         | code | message                              |
  | randon_name    | randon_salary | randon_age  | 200  | Successfully! Record has been added. |
  | randon_name    | randon_salary | randon_age  | 200  | Successfully! Record has been added. |
  | randon_name    | randon_salary | randon_age  | 200  | Successfully! Record has been added. |

@put
# PUT (http://dummy.restapiexample.com/api/v1/update/id)
Esquema do Cenário: Editar
  Dado que possua dados validos para criar ou editar:
  | name   | <name>   |
  | salary | <salary> |
  | age    | <age>    |
  | id     | <id>     |
  Quando executar o PUT no serviço
  Então retornará os dados com a "<message>" 
    E o codigo deve retornar "<code>"
  Exemplos:
  | name           | salary        | age         | id | code | message                                |
  | randon_name    | randon_salary | randon_age  | 1  | 200  | Successfully! Record has been updated. |
  | randon_name    | randon_salary | randon_age  | 2  | 200  | Successfully! Record has been updated. |
  | randon_name    | randon_salary | randon_age  | 3  | 200  | Successfully! Record has been updated. |

@delete
# DELETE (http://dummy.restapiexample.com/api/v1/delete/id)
Cenário: Deletar
  Dado que possua um id valido
  Quando executar o DELETE no serviço
  Então retornará os dados com a "Successfully! Record has been deleted" 
    E o codigo deve retornar "200"