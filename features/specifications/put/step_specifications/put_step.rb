Given (/^I send a PUT request on client endpoint.$/) do
    @body_put = {
        "nome": Faker::Name.name,
        "cpf": Faker::CPF.numeric,
        "endereco": Faker::StarWars.planet,
        "usuario": Faker::Pokemon.name,
        "senha": Faker::Base.numerify('inicial####')
    }.to_json
    @put_request = HTTParty.put 'http://localhost:3000/clientes/2',
        :body => @body_put,
        :headers => {
            "Content-Type" => 'application/json'
        }
end

Then (/^I should see client was updated.$/) do
    expect(@put_request.code).to eq 200
end
