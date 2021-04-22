# frozen_string_literal: true

class List < ApplicationRecord
  belongs_to :board

  has_many :tickets, dependent: :destroy

  validates :name, presence: true
end
