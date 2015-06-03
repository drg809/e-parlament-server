json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :nacionality, :age, :phone, :password, :new, :edit
  json.url user_url(user, format: :json)
end
