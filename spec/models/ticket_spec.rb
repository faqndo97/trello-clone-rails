# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Ticket, type: :model do
  it 'creates a valid titcket' do
    list = FactoryBot.create(:list)
    ticket = described_class.new(title: 'Test title', list: list)

    is_valid = ticket.save

    expect(is_valid).to be true
  end

  describe 'validations' do
    it 'create an invalid record without title' do
      list = FactoryBot.create(:list)
      ticket = described_class.new(list: list)

      is_valid = ticket.save

      expect(is_valid).to be false
      expect(ticket.errors.full_messages).to include "Title can't be blank"
    end

    it 'create an invalid record without numerically position' do
      list = FactoryBot.create(:list)
      ticket = described_class.new(title: 'Title name', position: 'test', list: list)

      is_valid = ticket.save

      expect(is_valid).to be false
      expect(ticket.errors.full_messages).to include 'Position is not a number'
    end

    it 'create an invalid record without list' do
      ticket = described_class.new(title: 'Test title')

      is_valid = ticket.save

      expect(is_valid).to be false
      expect(ticket.errors.full_messages).to include 'List must exist'
    end
  end
end
