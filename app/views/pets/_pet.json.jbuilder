json.extract! pet, :id, :name, :age, :sex, :shelters_id, :adoptable, :created_at, :updated_at
json.url pet_url(pet, format: :json)
