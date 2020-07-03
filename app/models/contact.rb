class Contact < ApplicationRecord
  validates :email, presence: true,
  format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Veuillez saisir une adresse mail valide svp. " }
  validates :message, presence: true
  validates :name, presence: true
end
