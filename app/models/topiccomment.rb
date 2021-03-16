class Topiccomment < ApplicationRecord
  belongs_to :topic
  belongs_to :user

  validates :text, presence:true
end
