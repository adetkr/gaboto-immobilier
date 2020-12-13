class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.sent.subject
  #
  def sent
    @contact = params[:contact]


    mail(to: "tkradm@yahoo.fr", subject: 'Vous avez reçu un nouveau message')
  end
end
