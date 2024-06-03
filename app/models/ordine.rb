class Ordine < ApplicationRecord
  belongs_to :cliente
  belongs_to :ordine
  belongs_to :ricetta
end
