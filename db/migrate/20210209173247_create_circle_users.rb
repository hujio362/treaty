class CreateCircleUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :circle_users do |t|

      t.timestamps
    end
  end
end
