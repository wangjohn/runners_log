json.array!(@runs) do |run|
  json.extract! run, :distance, :duration, :comments
  json.url run_url(run, format: :json)
end