require 'sqlite3'

database = SQLite3::Database.new("db/robot_world_development.db")
database.execute("CREATE TABLE robots (id INTEGER PRIMARY KEY AUTOINCREMENT,
                                        name VARCHAR(64),
                                        city VARCHAR(64),
                                        state VARCHAR(32),
                                        department VARCHAR(64)
                                        );")


puts 'Building robots'