json.array!(@participants) do |participant|
  json.extract! participant, :id, :name, :about
  json.url participant_url(participant, format: :json)
end
