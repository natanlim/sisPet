json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :species, :breed, :obs
  json.url pet_url(pet, format: :json)
end
