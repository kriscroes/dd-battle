json.array!(@finalgroups) do |finalgroup|
  json.extract! finalgroup, :id, :startup_id, :finalposition_id
  json.url finalgroup_url(finalgroup, format: :json)
end
