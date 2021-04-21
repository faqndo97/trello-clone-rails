# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create Users
user_jhon = User.create!(first_name: 'Jhon', last_name: 'Doe', email: 'john_doe@example.com', password: 'P@ssw0rd!', admin: false)
user_mark = User.create!(first_name: 'Mark', last_name: 'Dylan', email: 'mark_dylan@example.com', password: 'P@ssw0rd!', admin: false)
user_nick = User.create!(first_name: 'Nick', last_name: 'Peters', email: 'nick_peters@example.com', password: 'P@ssw0rd!', admin: true)
user_jose = User.create!(first_name: 'Jose', last_name: 'Gonzalez', email: 'ilegal_jose@example.com', password: 'P@ssw0rd!', admin: false)


# Create Boards
board_nick = Board.create!(name: 'Nick Board', owner: user_nick)
board_jhon = Board.create!(name: 'Jhon Board', owner: user_jhon)
board_mark = Board.create!(name: 'Mark Board', owner: user_mark)


# Create Lists
list_nick = List.create!(name: 'Backlog', position: 0, board: board_nick)
list_nick_2 = List.create!(name: 'To Do', position: 1, board: board_nick)
List.create!(name: 'In Progress', position: 2, board: board_nick)
List.create!(name: 'Code Review', position: 3, board: board_nick)
List.create!(name: 'Done', position: 4, board: board_nick)

list_mark = List.create!(name: 'Store list', position: 0, board: board_mark)

# Create Tickets
Ticket.create!(title: 'Data Base', description: 'description', position: 0, list: list_nick)
Ticket.create!(title: 'Controller', description: 'description', position: 1, list: list_nick)
Ticket.create!(title: 'View', description: 'description', position: 2, list: list_nick)
Ticket.create!(title: 'Model', description: 'description', position: 0, list: list_nick_2)
Ticket.create!(title: 'Seed', description: 'description', position: 1, list: list_nick_2)
