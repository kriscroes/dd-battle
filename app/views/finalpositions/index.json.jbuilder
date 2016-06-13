json.array!(@finalpositions) do |finalposition|
  json.extract! finalposition, :id, :name
  json.url finalposition_url(finalposition, format: :json)
end
