json.array!(@shopping_cart_items) do |shopping_cart_item|
  json.extract! shopping_cart_item, :id, :user_id, :garment_id, :quantity
  json.url shopping_cart_item_url(shopping_cart_item, format: :json)
end
