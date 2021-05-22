# frozen_string_literal: true

class Board < ApplicationRecord
  belongs_to :owner, class_name: 'User'

  has_many :lists, dependent: :destroy

  validates :name, presence: true
end
