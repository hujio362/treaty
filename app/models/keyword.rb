class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'お弁当' },
    { id: 3, name: 'おもてなし' },
    { id: 4, name: 'おつまみ' },
    { id: 5, name: '時短' },
    { id: 6, name: 'おしゃれ' },
    { id: 7, name: 'パーティ' },
    { id: 8, name: 'まかない' },
    { id: 9, name: 'イベント' }
  ]

  include ActiveHash::Associations
  has_many :posts
  has_many :circles
end
