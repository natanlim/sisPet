json.array!(@services) do |service|
  json.extract! service, :id, :description, :client_id, :price, :pet_id, :obs
  json.url service_url(service, format: :json)
end
