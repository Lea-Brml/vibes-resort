class Plaquette < ApplicationRecord

  validates :email, presence: true,
  format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Veuillez saisir une adresse mail valide svp. " }
  validates :name, presence: true
  validates :firstname, presence: true

end
