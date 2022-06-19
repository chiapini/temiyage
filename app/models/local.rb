class Local < ApplicationRecord
  validates :image, :shop_name, :information, :area_id, :category_id, :user, :prefecture_id,
            presence: true
  has_one_attached :image
  validates :category_id, :area_id, :prefecture_id, numericality: { other_than: 1, message: 'を入力してください' }
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :area
  belongs_to :category
end
