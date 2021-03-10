class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'イタリアン' },
    { id: 3, name: 'フレンチ' },
    { id: 4, name: '和食' },
    { id: 5, name: '洋食' },
    { id: 6, name: '中華' },
    { id: 7, name: 'エスニック' },
    { id: 8, name: '韓国料理' },
    { id: 9, name: 'スイーツ' },
    { id: 10, name: 'デザート' },
    { id: 11, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :posts
  has_many :circles
  has_many :topics
end
