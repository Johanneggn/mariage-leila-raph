class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.invitation.subject
  #
  def invitation(guest)
    @guest = guest
    mail(to: 'leila.monvoisin2017@gmail.com', to: 'raphael-domene@hotmail.fr', subject: 'Réponse invitation')
  end
end
