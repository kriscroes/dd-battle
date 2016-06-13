json.array!(@semifinalgroups) do |semifinalgroup|
  json.extract! semifinalgroup, :id, :startup_id, :semifinalposition_id
  json.url semifinalgroup_url(semifinalgroup, format: :json)
end
