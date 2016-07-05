json.array!(@cp_categories) do |cp_category|
  json.extract! cp_category, :id, :name, :description
  json.url cp_category_url(cp_category, format: :json)
end
