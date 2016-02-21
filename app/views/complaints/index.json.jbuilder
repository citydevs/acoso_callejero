json.array!(@complaints) do |complaint|
  json.extract! complaint, :id, :lat, :lng, :user_id, :place_id, :condition_id, :complaint_type_id, :bullying_type_id, :aggressor_id
  json.url complaint_url(complaint, format: :json)
end
