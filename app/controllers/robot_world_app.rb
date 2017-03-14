require 'sinatra'

require './app/models/robot.rb'

class RobotWorldApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/robots' do
    @robots = Robot.all
    erb :index
  end

  post '/robots' do
    robot = Robot.new(params['robot'])
    robot.save

    redirect '/robots'
  end

  get '/robots/new' do
    erb :new
  end
end

