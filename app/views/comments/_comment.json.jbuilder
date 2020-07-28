json.extract! comment, :id, :post_id, :body, :created_at, :updated_at, :user_id
json.url comment_url(comment, format: :json)
