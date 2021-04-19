# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Board, type: :model do
  it 'creates a valid board' do
    owner = FactoryBot.create(:user)
    board = Board.new(name: 'Test', owner: owner)

    is_valid = board.save

    expect(is_valid).to be true
  end

  describe 'validations' do
    it 'creates a invalid record without name' do
      owner = FactoryBot.create(:user)
      board = Board.new(owner: owner)

      is_valid = board.save

      expect(is_valid).to be false
      expect(board.errors.full_messages).to include "Name can't be blank"
    end

    it 'creates a invalid record without owner' do
      board = Board.new(name: 'Test')

      is_valid = board.save

      expect(is_valid).to be false
      expect(board.errors.full_messages).to include 'Owner must exist'
    end
  end
end
