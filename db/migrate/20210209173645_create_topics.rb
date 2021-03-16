class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :topics do |t|
      t.timestamps
      t.string     :name  , null:false
      t.text       :text  , null:false
      t.references :user  , null: false , foreign_key: true
      t.references :circle, null: false , foreign_key: true
    end
  end
end
