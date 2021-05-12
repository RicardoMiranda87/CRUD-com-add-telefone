json.extract! contato, :id, :numero, :tipo, :user_id, :created_at, :updated_at
json.url contato_url(contato, format: :json)
