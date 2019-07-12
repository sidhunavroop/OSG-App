json.extract! blog, :id, :title, :preview_text, :body, :author_id, :created_at, :updated_at
json.url blog_url(blog, format: :json)
