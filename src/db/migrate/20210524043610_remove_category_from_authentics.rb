class RemoveCategoryFromAuthentics < ActiveRecord::Migration[6.1]
  def change
    remove_column :authentics, :category, :string
  end
end
