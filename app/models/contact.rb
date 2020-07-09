class Contact < ApplicationRecord
  validates :email, presence: true,
  format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Veuillez saisir une adresse email valide svp. " }
  validates :firstname, presence: true
  validates :name, presence: true
end
