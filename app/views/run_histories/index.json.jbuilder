json.array!(@run_histories) do |run_history|
  json.extract! run_history, :user_id, :avg_duration, :avg_distance
  json.url run_history_url(run_history, format: :json)
end