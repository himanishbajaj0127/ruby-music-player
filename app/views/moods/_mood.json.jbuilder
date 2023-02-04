json.extract! mood, :id, :name, :is_active, :created_at, :updated_at
json.url mood_url(mood, format: :json)
