json.array!(@propuesta) do |propuestum|
  json.extract! propuestum, :id, :user_id, :title, :object, :finality, :scope_id, :subject_id
  json.url propuestum_url(propuestum, format: :json)
end
