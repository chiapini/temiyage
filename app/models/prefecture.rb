class Prefecture < ActiveHash::Base
  self.data = [
    { id: 1, name: '地方を選択して下さい' },
    { id: 2, name: '北海道地方' },
    { id: 3, name: '東北地方' },
    { id: 4, name: '関東地方' },
    { id: 5, name: '北陸・甲信越地方' },
    { id: 6, name: '東海地方' },
    { id: 7, name: '近畿地方' },
    { id: 8, name: '中国地方' },
    { id: 9, name: '四国地方' },
    { id: 10, name: '九州地方' },
    { id: 11, name: '沖縄地方' }
  ]

  include ActiveHash::Associations
  has_many :locals
end
