json.array!(@conditions) do |condition|
  json.extract! condition, :id, :type
  json.url condition_url(condition, format: :json)
end
