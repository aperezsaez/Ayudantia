class PetHistory < ApplicationRecord
  belongs_to :pet
  enum status: [:vivo, :grave, :pedido, :gladiolos, :muerto]
end
