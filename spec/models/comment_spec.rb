require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe '口コミ投稿' do
    context '口コミが投稿できる場合' do
      it '全ての情報が正しく埋められていたら投稿できる' do
        expect(@comment).to be_valid
      end
    end

    context '口コミが投稿できない場合' do
      it '口コミが空だったら投稿できない' do
        @comment.comment = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include('口コミを入力してください')
      end

      it '評価が空だったら投稿できない' do
        @comment.rate = '0'
        @comment.valid?
        expect(@comment.errors.full_messages).to include('評価は1以上の値にしてください')
      end

      it '使用したシーンが空だったら投稿できない' do
        @comment.scene_id = '1'
        @comment.valid?
        expect(@comment.errors.full_messages).to include('使用したシーンを入力してください')
      end

      it 'ユーザーが紐づいていないと投稿できない' do
        @comment.user = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include('Userを入力してください')
      end

      it '投稿が紐づいていないと投稿できない' do
        @comment.tweet = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include('Tweetを入力してください')
      end
    end
  end
end
