# frozen_string_literal: true

class CreateList < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :name, null: false
      t.integer :position, null: false, default: 0
      t.references :board, foreign_key: { to_table: 'boards' }

      t.timestamps
    end
  end
end
