json.extract! user, :id, :name,, :full_name,, :link, :created_at, :updated_at
json.url user_url(user, format: :json)
