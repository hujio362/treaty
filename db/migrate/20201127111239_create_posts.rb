class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|

      t.timestamps
      t.string      :name             , null: false
      t.integer     :category_id      , null: false
      t.integer     :keyword_id       , null: false
      t.text        :explanation      , null: false
      t.text        :recipe
      t.references  :user             , foreign_key: true
    end
  end
end
