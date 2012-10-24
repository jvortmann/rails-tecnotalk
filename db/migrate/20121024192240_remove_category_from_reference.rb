class RemoveCategoryFromReference < ActiveRecord::Migration
  def up
    remove_column :references, :category
  end

  def down
    add_column :references, :category, :string
  end
end
