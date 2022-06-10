class Tweet < ApplicationRecord
  validates :image, :shop_name, :item_name, :information, :area, :capacity, :expiry, :keep, :allergy, :quantity, :category_id, :price, :user,
            presence: true

  validates :category_id, numericality: { other_than: 1, message: 'を入力してください' }
  validates :price, numericality: { with: /\A[0-9]+\z/, message: 'は半角数値で設定してください' }
  has_one_attached :image
  belongs_to :user
  has_many :favorites, dependent: :destroy

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
end
