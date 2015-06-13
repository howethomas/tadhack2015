json.array!(@volunteers) do |volunteer|
  json.extract! volunteer, :id, :name, :twitter_handle, :mobile
  json.url volunteer_url(volunteer, format: :json)
end
