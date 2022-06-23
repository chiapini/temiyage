class Scene < ActiveHash::Base
  self.data = [
    { id: 1, name: '使用したシーンを選択して下さい' },
    { id: 2, name: '帰省時の手土産' },
    { id: 3, name: 'ママ友への手土産' },
    { id: 4, name: '結婚のご挨拶、顔合わせでの手土産' },
    { id: 5, name: 'ホームパーティー、宅飲みでの手土産' },
    { id: 6, name: '目上の方のお宅を訪問するときの手土産' },
    { id: 7, name: 'お取引先を訪問・接待時の手土産' },
    { id: 8, name: 'お世話になった企業・会社への手土産' },
    { id: 9, name: 'バレンタイン・ホワイトデー' },
    { id: 10, name: 'お祝い事' },
    { id: 11, name: '御供物として利用' },
    { id: 12, name: '自分へのご褒美' },
  ]

  include ActiveHash::Associations
  has_many :comments
end
