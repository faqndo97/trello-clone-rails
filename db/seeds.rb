# frozen_string_literla: true

# Delete data
Ticket.delete_all
List.delete_all
Board.delete_all
User.delete_all


# Create Users
users = FactoryBot.create_list(:user, 10)

users.each do |user|
  boards = FactoryBot.create_list(:board, 2, owner: user)

  boards.each do |board|
    lists = FactoryBot.create_list(:list, 3, board: board)

    lists.each do |list|
      FactoryBot.create_list(:ticket, rand(1..8), list: list)
    end
  end
end
