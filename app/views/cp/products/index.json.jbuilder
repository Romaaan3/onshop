json.array!(@cp_products) do |cp_product|
  json.extract! cp_product, :id, :brands_id, :categories_id, :name, :description, :price, :discount
  json.url cp_product_url(cp_product, format: :json)
end
