# frozen_string_literal: true

class List < ApplicationRecord
  belongs_to :board
  has_many :tickets, -> { order(:position) }

  validates :name, presence: true
end
