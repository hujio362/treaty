class Topic < ApplicationRecord
  belongs_to :circle
  belongs_to :user
  has_many :topiccomments

  with_options presence: true do
    validates :name
    validates :text
  end
end
