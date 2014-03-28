json.array!(@projects) do |project|
  json.extract! project, :id, :title, :subtitle, :body, :publish_date, :published, :slug
  json.url project_url(project, format: :json)
end
