json.array!(@deaths) do |death|
  json.extract! death, :id, :date, :address, :description
  json.url death_url(death, format: :json)
end
