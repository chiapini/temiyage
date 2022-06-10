class ContactsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def new
    @contact = Contact.new
  end

  def create
    @user = current_user
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.contact_mail(@contact, current_user).deliver
      redirect_to root_path, notice: 'お問い合わせ内容を送信しました'
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:contact_text, :opinion_id, :name, :image).merge(user_id: current_user.id)
  end
end
