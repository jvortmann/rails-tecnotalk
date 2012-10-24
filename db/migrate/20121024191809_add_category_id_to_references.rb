class AddCategoryIdToReferences < ActiveRecord::Migration
  def change
    add_column :references, :category_id, :integer
  end
end
