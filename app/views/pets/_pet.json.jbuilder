json.extract! pet, :id, :name, :age, :sex, :adoptable, :created_at, :updated_at
json.url pet_url(pet, format: :json)