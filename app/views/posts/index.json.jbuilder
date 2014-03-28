json.array!(@posts) do |post|
  json.extract! post, :id, :title, :subtitle, :body, :publish_date, :published, :slug
  json.url post_url(post, format: :json)
end
