json.array!(@ilps) do |ilp|
  json.extract! ilp, :id, :user_id, :title, :object, :finality, :scope, :subject
  json.url ilp_url(ilp, format: :json)
end
