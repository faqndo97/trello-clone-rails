# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BoardsController, type: :request do
  context 'as an authenticated user' do
    it 'can enter the boards' do
      u = FactoryBot.create(:user)
      sign_in(u)

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
