json.array!(@qualificationgroups) do |qualificationgroup|
  json.extract! qualificationgroup, :id, :startup_id, :qualificationposition_id
  json.url qualificationgroup_url(qualificationgroup, format: :json)
end
