# Preview all emails at http://localhost:3000/rails/mailers/flat_mailer
class FlatMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/flat_mailer/published
  def published
    FlatMailer.published
  end

end
