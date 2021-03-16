class CreateCircleUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :circle_users do |t|
      t.timestamps
      t.references :user, null: false, foreign_key: true
      t.references :circle, null: false, foreign_key: true
    end
  end
end
