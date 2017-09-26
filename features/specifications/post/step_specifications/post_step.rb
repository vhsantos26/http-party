Given (/^I send a POST request on client endpoint.$/) do
    @body = {
        "nome": Faker::Name.name,
        "cpf": Faker::CPF::numeric,
        "endereco": Faker::StarWars.planet,
        "usuario": Faker::Pokemon.name,
        "senha": Faker::Base.numerify('inicial####')
    }.to_json
    @post_clients = HTTParty.post 'http://localhost:3000/clientes',
    :body => @body,
    :headers => {
        "Content-Type" => 'application/json'
    }
end

Then (/^I should see a new client registered.$/) do
    expect(@post_clients.code).to eq 201
end
