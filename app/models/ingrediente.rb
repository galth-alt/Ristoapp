class Ingrediente < ApplicationRecord
  has_many :ingrediente_ricettas
  has_many :ricettas, through: :ingrediente_ricettas
end
