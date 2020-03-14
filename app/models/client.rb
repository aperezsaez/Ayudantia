class Client < ApplicationRecord
  has_many :pets
def mascotas
  pets.count
end

end
