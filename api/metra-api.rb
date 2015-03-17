require 'sinatra'
require 'yaml'
require 'sinatra/json'
require 'sinatra/config_file'

before do
    content_type :json
end

get '/lines' do
    lines = YAML.load_file('lines.yaml')
    return lines
end

after do
    response.body = json response.body
end