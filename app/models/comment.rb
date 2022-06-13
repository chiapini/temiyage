class Comment < ApplicationRecord
  validates  :comment,:scene_id,:rate,:tweet, :user, presence: true
  validates :rate, numericality:{
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1}

  belongs_to :user
  belongs_to :tweet
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :scene
end
