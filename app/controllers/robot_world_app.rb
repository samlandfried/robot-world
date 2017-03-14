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

  post '/robots' do
    robot = Robot.new(params)
    robot.save

    erb :index
  end

  get '/robots/new' do
    erb :new
  end
end

