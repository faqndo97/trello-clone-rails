# frozen_string_literal: true

require 'rails_helper'

RSpec.describe List, type: :model do
  it 'creates a valid list' do
    board = FactoryBot.create(:board)
    list  = described_class.new(name: 'Test List', board: board)

    is_valid = list.save

    expect(is_valid).to be true
  end

  describe 'validations' do
    it 'create an invalid record without name' do
      board = FactoryBot.create(:board)
      list  = described_class.new(board: board)

      is_valid = list.save

      expect(is_valid).to be false
      expect(list.errors.full_messages).to include "Name can't be blank"
    end

    it 'create an invalid record without board' do
      list = described_class.new(name: 'Test List')

      is_valid = list.save

      expect(is_valid).to be false
      expect(list.errors.full_messages).to include 'Board must exist'
    end
  end
end
