json.array!(@semifinalpositions) do |semifinalposition|
  json.extract! semifinalposition, :id, :name
  json.url semifinalposition_url(semifinalposition, format: :json)
end
