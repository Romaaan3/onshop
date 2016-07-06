json.array!(@cp_subcategories) do |cp_subcategory|
  json.extract! cp_subcategory, :id, :name, :description, :categories_id
  json.url cp_subcategory_url(cp_subcategory, format: :json)
end
