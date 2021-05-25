class AddCategoryRefToAuthentics < ActiveRecord::Migration[6.1]
  def change
    add_reference :authentics, :category, null: false, foreign_key: true
  end
end
