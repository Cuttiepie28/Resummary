json.array!(@projects) do |project|
  json.extract! project, :id, :title, :summary, :start_year, :end_year
  json.url project_url(project, format: :json)
end
