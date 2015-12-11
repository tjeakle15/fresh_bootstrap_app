json.array!(@tasks) do |task|
  json.extract! task, :id, :project_id, :description, :start_date, :end_date, :created_by, :created_at, :updated_by, :updated_at
  json.url task_url(task, format: :json)
end
