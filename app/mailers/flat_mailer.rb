class FlatMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.flat_mailer.published.subject
  #
  def published
    @greeting = "Hi"
    @flat = params[:flat]

    mail(to: "tkradm@yahoo.fr", subject: 'Une nouvelle annonce vient a été publiée sur GabotoImmobilier ')
  end
end
