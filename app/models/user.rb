class User < ApplicationRecord
  has_secure_password

  validates :username, length: { in: 5..10 }, uniqueness: true
  validates :name, format: {with: /\A[^0-9`!@#\$%\^&*+_=]+\z/, message:"no debe estar vacío ni incluir caracteres especiales."} # required
  validates :phone, format: {with: /\A(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[- ]?\d{3}[- ]?\d{4}\z/, message:"no debe estar vacío ni incluir letras."},
  length: {maximum: 10, message: "debe de ser de 10 digitos máximo"} # required
  validates :status, presence: true # required
end
