class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         validates :nickname, :gender, :situation, :children, :age_id, :job_id, :area_id, :think_id, presence: true
  validates  :nickname, length: { maximum: 20 }
  validates  :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i, message: 'には英字と数字の両方を含めて設定してください' }
  validates  :age_id, :job_id, :area_id, :think_id, numericality: { other_than: 1, message: 'を入力してください' }

   has_many :tweets, dependent: :destroy
   has_many :favorites, dependent: :destroy
   has_many :comments, dependent: :destroy
   has_many :contacts

   def already_favorite?(tweet)
     favorites.exists?(tweet_id: tweet.id)
   end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area, :job, :age, :think
end
