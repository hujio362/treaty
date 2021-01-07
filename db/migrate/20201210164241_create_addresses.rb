class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|

      t.timestamps
      t.string          :postal_code    ,null: false
      t.integer         :prefecture_id  ,null: false
      t.string          :municipality   ,null: false
      t.string          :building
      t.string          :house_number   ,null: false
      t.string          :tel_number     ,null: false
      t.references      :order          ,foreign_key: true
    end
  end
end
