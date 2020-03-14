class Pet < ApplicationRecord
  has_many :pet_histories
  belongs_to :client

def visitas
  pet_histories.count
end

def avg_peso
  suma = 0
   pet_histories.each do |i|
    suma += i.weight
   end
   if pet_histories.length > 0
   suma = suma/pet_histories.length
   end
end

def avg_altura
  suma = 0
   pet_histories.each do |i|
    suma += i.height
   end
   if pet_histories.length > 0
   suma = suma/pet_histories.length
   end
end

def altura_max
  pet_histories.pluck(:height).max
end

def peso_max
  pet_histories.pluck(:weight).max
end


end
