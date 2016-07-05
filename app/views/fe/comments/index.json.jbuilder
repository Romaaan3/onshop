json.array!(@fe_comments) do |fe_comment|
  json.extract! fe_comment, :id, :users_id, :title, :description
  json.url fe_comment_url(fe_comment, format: :json)
end
