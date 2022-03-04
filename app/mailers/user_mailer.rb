class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.invitation.subject
  #
  def invitation(guest)
    @guest = guest
    mail(to: 'johanne.gueguen@gmail.com', subject: 'Réponse invitation')
  end
end