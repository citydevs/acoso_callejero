json.array!(@bullying_types) do |bullying_type|
  json.extract! bullying_type, :id, :name
  json.url bullying_type_url(bullying_type, format: :json)
end
