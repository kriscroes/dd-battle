json.array!(@startupparticipants) do |startupparticipant|
  json.extract! startupparticipant, :id, :startup_id, :participant_id, :role
  json.url startupparticipant_url(startupparticipant, format: :json)
end
