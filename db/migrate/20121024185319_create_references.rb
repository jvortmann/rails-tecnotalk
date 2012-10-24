class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :category
      t.string :link

      t.timestamps
    end
  end
end
