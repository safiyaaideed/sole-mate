class CreateSneakers < ActiveRecord::Migration[6.1]
  def change
    create_table :sneakers do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :availability
      t.string :boolean
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
