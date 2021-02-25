class Circle < ApplicationRecord
  has_many :users, through: :circle_users
  has_many :topic
  has_one_attached :image

  with_options presence: true do
    validates :name
    validates :explanation
    validates :image
  end

  with_options numericality: { other_than: 1 } do
    validates :category_id
    validates :keyword_id
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :keyword

  
end
