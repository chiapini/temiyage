require 'rails_helper'

RSpec.describe Contact, type: :model do
  before do
    @contact = FactoryBot.build(:contact)
  end

  describe 'お問い合わせ' do
    context 'お問い合わせが送信できる場合' do
      it '全ての情報が正しく埋められていたら送信できる' do
        expect(@contact).to be_valid
      end

      it '画像が空欄でも送信できる' do
        @contact.image = nil
        expect(@contact).to be_valid
      end

      it 'お問い合わせ内容が空欄でも送信できる' do
        @contact.contact_text = nil
        expect(@contact).to be_valid
      end
    end

    context 'お問い合わせが送信できない場合' do
      it '氏名が空だったら送信できない' do
        @contact.name = ''
        @contact.valid?
        expect(@contact.errors.full_messages).to include('氏名を入力してください')
      end

      it 'お問い合せ項目が空だったら送信できない' do
        @contact.opinion_id = '1'
        @contact.valid?
        expect(@contact.errors.full_messages).to include('お問い合せ項目を入力してください')
      end
    end
  end
end
