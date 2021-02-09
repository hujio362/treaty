class CreateTopiccomments < ActiveRecord::Migration[6.0]
  def change
    create_table :topiccomments do |t|

      t.timestamps
    end
  end
end
