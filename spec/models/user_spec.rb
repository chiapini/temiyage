require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  describe 'ユーザー新規登録' do
    context '新規登録が出来る場合' do
      it '全ての情報が正しく埋められていたら登録出来る' do
        expect(@user).to be_valid
      end
    end

    context '新規登録が出来ない場合' do
      it 'ニックネームが空だったら登録できない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('ニックネームを入力してください')
      end

      it 'メールアドレスが空だったら登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('メールアドレスを入力してください')
      end

      it 'パスワードが空だったら登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードを入力してください')
      end

      it '性別が空だったら登録できない' do
        @user.gender = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('性別を入力してください')
      end

      it '状況が空だったら登録できない' do
        @user.situation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('状況を入力してください')
      end

      it '子供の有無が空だったら登録できない' do
        @user.children = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('子供の有無を入力してください')
      end

      it '年齢が空だったら登録できない' do
        @user.age_id = '1'
        @user.valid?
        expect(@user.errors.full_messages).to include('年齢を入力してください')
      end

      it '職業が空だったら登録できない' do
        @user.job_id = '1'
        @user.valid?
        expect(@user.errors.full_messages).to include('職業を入力してください')
      end

      it 'お住まいの地域が空だったら登録できない' do
        @user.area_id = '1'
        @user.valid?
        expect(@user.errors.full_messages).to include('お住まいの地域を入力してください')
      end

      it '現在の気持ちが空だったら登録できない' do
        @user.think_id = '1'
        @user.valid?
        expect(@user.errors.full_messages).to include('現在の気持ちを入力してください')
      end

      it 'メールアドレスが重複していたら登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include('メールアドレスはすでに存在します')
      end

      it 'メールアドレスは＠を含まないと登録できない' do
        @user.email = 'emailcom'
        @user.valid?
        expect(@user.errors.full_messages).to include('メールアドレスは不正な値です')
      end

      it 'パスワードは６文字以上でないと登録できない' do
        @user.password = '1234'
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは6文字以上で入力してください')
      end

      it 'パスワードは128文字以下でないと登録できない' do
        @user.password = Faker::Internet.password(min_length: 129)
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは128文字以内で入力してください')
      end

      it 'パスワードと確認用パスワードが一致していないと登録できない' do
        @user.password = '123456'
        @user.password_confirmation = '124567'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワード（確認用）とパスワードの入力が一致しません')
      end

      it 'ニックネームは20文字以下でないと登録できない' do
        @user.nickname = 'テスト' * 7
        @user.valid?
        expect(@user.errors.full_messages).to include('ニックネームは20文字以内で入力してください')
      end
    end
  end
end
