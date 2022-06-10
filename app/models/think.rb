class Think < ActiveHash::Base
  self.data = [
    { id: 1, name: '現在の気持ちに最も近いものを選択して下さい' },
    { id: 2, name: '手土産選びが面倒だ' },
    { id: 3, name: '手土産を選んでいる時間があまりない' },
    { id: 4, name: '迷ってしまい中々決められない' },
    { id: 5, name: '会社で菓子折りを使う機会が多い' },
    { id: 6, name: 'お菓子を親戚に贈る機会が多い' },
    { id: 7, name: '新商品の情報が知りたい' },
    { id: 8, name: '話題のお菓子が知りたい' },
    { id: 9, name: '見栄えするお菓子が知りたい' }
  ]

  include ActiveHash::Associations
  has_many :users
end
