json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :tel, :email
  json.url customer_url(customer, format: :json)
end
