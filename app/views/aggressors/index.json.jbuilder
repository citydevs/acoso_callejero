json.array!(@aggressors) do |aggressor|
  json.extract! aggressor, :id, :type
  json.url aggressor_url(aggressor, format: :json)
end
