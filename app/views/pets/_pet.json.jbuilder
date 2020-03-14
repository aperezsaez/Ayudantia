json.extract! pet, :id, :name, :race, :birth_date, :created_at, :updated_at
json.url pet_url(pet, format: :json)
