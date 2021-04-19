# frozen_string_literal: true

class Board < ApplicationRecord
  belongs_to :owner, class_name: 'User'

  validates :name, presence: true
end
