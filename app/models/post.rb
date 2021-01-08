class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  with_options presence: true do
    validates :name
    validates :explanation
    validates :image
  end

  with_options numericality: { other_than: 1 } do
    validates :category_id
    validates :keyword_id
  end

  # extend ActiveHash::Associations::ActiveRecordExtensions
  # belongs_to_active_hash :prefecture
  # belongs_to_active_hash :category
  # belongs_to_active_hash :day
  # belongs_to_active_hash :delivery_cost
  # belongs_to_active_hash :status
end
