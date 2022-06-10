class Contact < ApplicationRecord
  belongs_to :user

  validates :opinion_id, numericality: { other_than: 1, message: 'を入力してください' }, presence: true
  validates :name, presence: true
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :opinion
end
