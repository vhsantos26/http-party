Given (/^I send a GET request on client endpoint.$/) do
    @get_clients = HTTParty.get 'http://localhost:3000/clientes'
end

Then (/^I should see the return will be the registered clients.$/) do
    expect(@get_clients.code).to eq 200
end
