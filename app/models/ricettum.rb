class Ricetta < ApplicationRecord
  has_many :ingrediente_ricettas
  has_many :ingredienti, through: :ingrediente_ricettas
end
