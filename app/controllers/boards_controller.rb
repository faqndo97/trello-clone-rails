# frozen_string_literal: true

class BoardsController < ApplicationController
  def index
    @boards = Board.where(owner: current_user)
  end

  def show
    @board = Board.includes(lists: %i[tickets]).find(board_id)
  end

  private

  def board_id
    params[:id]
  end
end