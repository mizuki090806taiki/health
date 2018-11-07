json.extract! user, :id, :name, :banngou, :password_digest, :remember_token, :kengen, :created_at, :updated_at
json.url user_url(user, format: :json)
