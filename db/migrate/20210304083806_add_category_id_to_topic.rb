class AddCategoryIdToTopic < ActiveRecord::Migration[6.0]
  def change
    add_column :topics, :category_id, :integer
  end
end
