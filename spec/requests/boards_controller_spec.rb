# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BoardsController, type: :request do
  context '#index' do
    context 'as an authenticated user' do
      it 'can enter the boards' do
        user = FactoryBot.create(:user)
        sign_in(user)

        get '/boards'

        expect(response).to have_http_status(:ok)
      end
    end

    context 'as an unauthenticated user' do
      it 'cannot enter the boards' do
        get '/boards'

        expect(response).to redirect_to('/users/sign_in')
      end
    end
  end

  context '#show' do
    context 'as an authenticated user' do
      it 'can enter its board' do
        user = FactoryBot.create(:user)
        board = FactoryBot.create(:board, owner: user)

        sign_in(user)

        get "/boards/#{board.id}"

        expect(response).to have_http_status(:ok)
      end
    end

    context 'as an unauthenticated user' do
      it 'cannot enter its board' do
        get '/boards/123'

        expect(response).to redirect_to('/users/sign_in')
      end
    end
  end
end
