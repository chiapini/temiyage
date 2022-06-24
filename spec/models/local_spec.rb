require 'rails_helper'

RSpec.describe Local, type: :model do
  before do
    @local = FactoryBot.build(:local)
  end

  describe 'ローカル記事投稿' do
    context 'ローカル記事が投稿できる場合' do
      it '全ての情報が正しく埋められていたら投稿できる' do
        expect(@local).to be_valid
      end
    end

    context 'ローカル記事の投稿ができない場合' do
      it '画像が空だったら投稿できない' do
        @local.image = nil
        @local.valid?
        expect(@local.errors.full_messages).to include('画像を入力してください')
      end

      it 'お店の名前が空だったら投稿できない' do
        @local.shop_name = ''
        @local.valid?
        expect(@local.errors.full_messages).to include('お店の名前を入力してください')
      end

      it 'お店の紹介が空だったら投稿できない' do
        @local.information = ''
        @local.valid?
        expect(@local.errors.full_messages).to include('お店の紹介を入力してください')
      end

      it '商品カテゴリーが空だったら投稿できない' do
        @local.category_id = '1'
        @local.valid?
        expect(@local.errors.full_messages).to include('商品カテゴリーを入力してください')
      end

      it '地域が空だったら投稿できない' do
        @local.area_id = '1'
        @local.valid?
        expect(@local.errors.full_messages).to include('地域を入力してください')
      end

      it '地方が空だったら投稿できない' do
        @local.prefecture_id = '1'
        @local.valid?
        expect(@local.errors.full_messages).to include('地方を入力してください')
      end

      it 'ユーザーが紐づいていないと投稿できない' do
        @local.user = nil
        @local.valid?
        expect(@local.errors.full_messages).to include('Userを入力してください')
      end
    end
  end
end
