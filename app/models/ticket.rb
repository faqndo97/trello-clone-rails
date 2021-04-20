# frozen_string_literal: true

class Ticket < ApplicationRecord
  belongs_to :list

  validates :title, presence: true
  validates :position, numericality: { only_integer: true }
end
