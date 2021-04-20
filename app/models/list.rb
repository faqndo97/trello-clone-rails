# frozen_string_literal: true

class List < ApplicationRecord
  belongs_to :board, class_name: 'Board'

  validates :name, presence: true
end
