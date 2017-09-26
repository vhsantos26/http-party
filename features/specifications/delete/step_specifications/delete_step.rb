Given (/^I send a DELETE request on client endpoint.$/) do
    @body_delete = {
        "id": 1
    }.to_json

    @delete_request = HTTParty.delete 'http://localhost:3000/clientes/1',
    :body => @body_delete,
    :headers => {
        "Content-Type" => 'application/json'
    }
end

Then (/^I shouldn't see the clients that I delete.$/) do
    expect(@delete_request["id"]).to eq nil
end
