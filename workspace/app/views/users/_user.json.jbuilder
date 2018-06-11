json.extract! user, :id, :name, :clinic, :emails, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
