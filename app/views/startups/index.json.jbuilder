json.array!(@startups) do |startup|
  json.extract! startup, :id, :name, :description, :track_id
  json.url startup_url(startup, format: :json)
end
