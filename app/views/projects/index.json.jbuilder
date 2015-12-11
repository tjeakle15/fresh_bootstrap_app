json.array!(@projects) do |project|
  json.extract! project, :id, :customer_id, :name, :description, :start_date, :end_date, :created_by, :created_at, :updated_by, :updated_at
  json.url project_url(project, format: :json)
end
