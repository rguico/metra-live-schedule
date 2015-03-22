require 'bundler'
require 'rubygems'

Bundler.require

require 'sinatra/base'
require 'yaml'
require 'sinatra/json'
require 'sinatra/config_file'

module MetraLiveSchedule
    class App < Sinatra::Base
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

        run! if app_file == $0
    end
end