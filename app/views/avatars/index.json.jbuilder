json.array!(@avatars) do |avatar|
  json.extract! avatar, :id, :name, :desc, :picture
  json.url avatar_url(avatar, format: :json)
end
