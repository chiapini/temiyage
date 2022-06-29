class Tweet < ApplicationRecord
  validates :images, :shop_name, :item_name, :information, :area, :capacity, :expiry, :keep, :allergy, :quantity, :category_id, :price, :user, :search_id,
            presence: true

  validates :category_id, numericality: { other_than: 1, message: 'を入力してください' }
  validates :price, numericality: { with: /\A[0-9]+\z/, message: 'は半角数値で設定してください' }
  validates :information, length: { maximum: 500, message: 'は500文字以内で入力してください' }

  has_many_attached :images
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :images, length: { minimum: 1, maximum: 5, message: 'は1枚以上5枚以下にしてください' }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
end
