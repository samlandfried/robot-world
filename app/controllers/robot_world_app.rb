require 'sinatra'

require './app/models/robot.rb'

class RobotWorldApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/' do
    'hello world'
  end

  get '/robots' do
    erb :index
  end

  get '/robots/new' do
    erb :new
  end
end

