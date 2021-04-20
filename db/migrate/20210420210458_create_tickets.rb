class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :title, null: false
      t.string :description
      t.integer :position, null: false, default: 0
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end
