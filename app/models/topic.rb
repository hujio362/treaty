class Topic < ApplicationRecord
  belongs_to :circle
  belongs_to :user
  has_many :topiccomments

  woth_opition presence: true do
    validates :name
    validates :text
  end
end
