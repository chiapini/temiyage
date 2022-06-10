class ContactMailer < ApplicationMailer
  def contact_mail(contact, user)
    @contact = contact
    mail to: user.email, bcc: ENV['EMAIL_ADDRESS'], subject: 'お問い合わせ【自動送信】'
  end
end
