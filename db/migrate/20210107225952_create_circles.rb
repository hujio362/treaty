class CreateCircles < ActiveRecord::Migration[6.0]
  def change
    create_table :circles do |t|

      t.timestamps
      t.string      :name             , null: false
      t.integer     :category_id      , null: false
      t.integer     :keyword_id       , null: false
      t.text        :explanation      , null: false
      t.references  :user             , foreign_key: true
    end
  end
end
