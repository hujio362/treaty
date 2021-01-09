class Circle < ApplicationRecord
  has_many :users
  has_many :thread

  with_options presence: true do
    validates :name
    validates :explanation
    validates :image
  end

  with_options numericality: { other_than: 1 } do
    validates :category_id
    validates :keyword_id
  end
  
end
