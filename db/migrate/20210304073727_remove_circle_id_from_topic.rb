class RemoveCircleIdFromTopic < ActiveRecord::Migration[6.0]
  def change
    remove_reference :topics, :circle, foreign_key: true
  end
end
