require 'sqlite3'

class Robot

  attr_reader :name, :city, :state, :department

  def initialize(robot_params)
    @name = robot_params[name]
    @city = robot_params[city]
    @state = robot_params[state]
    @department = robot_params[department]
    @database = SQLite3::Database.new('db/robot_world_development.db')
    @database.results_as_hash = true
  end

  def save
    @database.execute("INSERT INTO robots (name, city, state, department) VALUES (?, ?, ?, ?);", name, city, state, department)
  end
end
