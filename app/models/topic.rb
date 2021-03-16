class Topic < ApplicationRecord
  belongs_to :user
  has_many :topiccomments

  with_options presence: true do
    validates :name
    validates :text
  end

  with_options numericality: { other_than: 1 } do
    validates :category_id
  end
end
