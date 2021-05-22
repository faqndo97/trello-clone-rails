# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Main flow', type: :system do
  context 'as an authenticated user' do
    it 'can see its tickets' do
      user = FactoryBot.create(:user)
      board = FactoryBot.create(:board, owner: user)
      list1 = FactoryBot.create(:list, board: board, position: 0)
      list2 = FactoryBot.create(:list, board: board, position: 1)
      ticket1 = FactoryBot.create(:ticket, list: list1, position: 0)
      ticket2 = FactoryBot.create(:ticket, list: list2, position: 0)
      ticket3 = FactoryBot.create(:ticket, list: list2, position: 1)
      login_as(user)

      visit('/boards')

      expect(page).to have_link(board.name)

      click_on board.name

      expect(page).to have_text(board.name)
      expect(page).to have_text(list1.name)
      expect(page).to have_text(list2.name)
      expect(page).to have_text(ticket1.title)
      expect(page).to have_text(ticket2.title)
      expect(page).to have_text(ticket3.title)
    end
  end
end
