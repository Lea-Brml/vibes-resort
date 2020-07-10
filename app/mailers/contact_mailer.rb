class ContactMailer < ApplicationMailer

  def contact_email(contact)
  #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
  @contact = contact

  # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
  mail(to: 'vibesresort@angelotti.fr', subject: 'Vibes Resort: Nouvelle demande de contact !')
end

end
