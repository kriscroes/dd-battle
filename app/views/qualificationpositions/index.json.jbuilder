json.array!(@qualificationpositions) do |qualificationposition|
  json.extract! qualificationposition, :id, :name
  json.url qualificationposition_url(qualificationposition, format: :json)
end
