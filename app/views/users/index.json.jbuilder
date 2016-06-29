json.array!(@users) do |user|
  json.extract! user, :id, :username, :email, :password_digest, :fullname, :phone_num, :website, :linkedin, :twitter, :github, :summary
  json.url user_url(user, format: :json)
end
