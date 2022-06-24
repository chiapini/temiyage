require 'rails_helper'

RSpec.describe Favorite, type: :model do
  before do
    @favorite = FactoryBot.build(:favorite)
  end

  describe 'お気に入り機能' do
    context 'お気に入りに登録できる場合' do
      it '全ての情報が揃っていれば登録できる' do
        expect(@favorite).to be_valid
      end
    end

    context 'お気に入りに登録できない場合' do
      it 'ユーザーが紐づいていないと登録できない' do
        @favorite.user = nil
        @favorite.valid?
        expect(@favorite.errors.full_messages).to include('Userを入力してください')
      end

      it '投稿が紐づいていないと登録できない' do
        @favorite.tweet = nil
        @favorite.valid?
        expect(@favorite.errors.full_messages).to include('Tweetを入力してください')
      end
    end
  end
end
