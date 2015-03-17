require 'sinatra'
require 'sinatra/json'
require 'sinatra/config_file'

before do
    content_type :json
end

get '/lines' do
    return :lines => [
        [:id => 'UP-W',
         :name => 'Union Pacific West'],
        [:id => 'MD-W',
         :name => 'Milwaukee District West']
    ]
end

after do
    response.body = JSON.dump(response.body)
end