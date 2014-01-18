json.array!(@garments) do |garment|
  json.extract! garment, :id, :style, :period, :genre, :material, :available_size, :quantity, :price
  json.url garment_url(garment, format: :json)
end
