json.array!(@survivors) do |survivor|
  json.extract! survivor, :id, :name, :age, :gender, :lastLatitude, :lastLongitude
  json.url survivor_url(survivor, format: :json)
end
