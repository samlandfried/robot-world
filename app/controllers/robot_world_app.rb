require 'sinatra'

require './app/models/robot.rb'

class RobotWorldApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)
  set :method_override, true

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

  get '/robots/:id/edit' do |id|
    @robot = Robot.find(id)

    erb :edit
  end

  put '/robots/:id' do |id|
    @robot = Robot.update(id.to_i, params['robot'])

    redirect '/robots'
  end
end

