json.array!(@aggressors) do |aggressor|
  json.extract! aggressor, :id, :name
  json.url aggressor_url(aggressor, format: :json)
end
