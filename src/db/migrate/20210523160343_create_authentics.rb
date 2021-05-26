class CreateAuthentics < ActiveRecord::Migration[6.1]
  def change
    create_table :authentics do |t|
      t.string :Sneakers
      t.string :name
      t.text :description
      t.float :price
      t.boolean :availability
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
