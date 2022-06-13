class Opinion < ActiveHash::Base
  self.data = [
    { id: 1, name: 'お問い合せ項目を選択して下さい' },
    { id: 2, name: '商品情報に関して' },
    { id: 3, name: 'サービスの改善' },
    { id: 4, name: '機能要望' },
    { id: 5, name: '不具合の報告' },
    { id: 6, name: '投稿機能が欲しい' },
    { id: 7, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :contacts
end
