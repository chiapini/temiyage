require 'rails_helper'

RSpec.describe Tweet, type: :model do
  before do
    @tweet = FactoryBot.build(:tweet)
  end

  describe '商品記事投稿' do
    context '商品記事が投稿できる場合' do
      it '全ての情報が正しく埋められていたら投稿できる' do
        expect(@tweet).to be_valid
      end

      it 'Urlが空欄でも投稿できる' do
        @tweet.url = nil
        expect(@tweet).to be_valid
      end

      it 'event_idが空欄でも投稿できる' do
        @tweet.event_id = nil
        expect(@tweet).to be_valid
      end
    end

    context '商品記事の投稿ができない場合' do
      it '商品画像が空だったら投稿できない' do
        @tweet.images = nil
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include('商品画像を入力してください')
      end

      it 'ブランド名が空だったら投稿できない' do
        @tweet.shop_name = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include('ブランド名を入力してください')
      end

      it '商品の名前が空だったら投稿できない' do
        @tweet.item_name = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include('商品の名前を入力してください')
      end

      it '商品PRが空だったら投稿できない' do
        @tweet.information = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include('商品PRを入力してください')
      end

      it '販売箇所が空だったら投稿できない' do
        @tweet.area = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include('販売箇所を入力してください')
      end

      it '内容量が空だったら投稿できない' do
        @tweet.capacity = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include('内容量を入力してください')
      end

      it '賞味期限が空だったら投稿できない' do
        @tweet.expiry = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include('賞味期限を入力してください')
      end

      it '保存方法が空だったら投稿できない' do
        @tweet.keep = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include('保存方法を入力してください')
      end

      it 'アレルギー源が空だったら投稿できない' do
        @tweet.allergy = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include('アレルギー源を入力してください')
      end

      it '個数が空だったら投稿できない' do
        @tweet.quantity = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include('個数を入力してください')
      end

      it '商品の税込価格が空だったら投稿できない' do
        @tweet.price = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include('商品の税込価格を入力してください')
      end

      it '商品カテゴリーカテゴリーが空だったら投稿できない' do
        @tweet.category_id = '1'
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include('商品カテゴリーを入力してください')
      end

      it '商品PRが500文字以上だったら投稿できない' do
        @tweet.information = 'テストです' * 110
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include('商品PRは500文字以内で入力してください')
      end

      it '商品の税込価格が半角数値で入力されていなかったら投稿できない' do
        @tweet.price = '５００'
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include('商品の税込価格は半角数値で設定してください')
      end

      it 'ユーザーが紐づいていないと投稿できない' do
        @tweet.user = nil
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include('Userを入力してください')
      end
    end
  end
end
