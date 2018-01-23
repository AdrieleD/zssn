json.array!(@inventories) do |inventory|
  json.extract! inventory, :id, :water, :food, :medication, :ammunition, :survivor_id
  json.url inventory_url(inventory, format: :json)
end
