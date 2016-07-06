json.array!(@cp_subsubcategories) do |cp_subsubcategory|
  json.extract! cp_subsubcategory, :id, :subcategories_id, :name, :description
  json.url cp_subsubcategory_url(cp_subsubcategory, format: :json)
end
