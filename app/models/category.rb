class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '商品カテゴリーを選択して下さい' },
    { id: 2, name: '和菓子' },
    { id: 3, name: '洋菓子' },
    { id: 4, name: '生菓子' },
    { id: 5, name: '焼菓子' },
    { id: 6, name: '米菓子' },
    { id: 7, name: 'チョコレート菓子' },
    { id: 8, name: '冷菓' },
    { id: 9, name: '機能性菓子' }
  ]

  include ActiveHash::Associations
  has_many :tweets
  has_many :locals
end
