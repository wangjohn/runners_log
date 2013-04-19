module RunsHelper
  def run_duration(run)
    seconds = run.duration.to_i

    minutes = seconds / 60
    hours = seconds / 3600
    seconds = seconds % 60

    sprintf "%02d:%02d:%02d", hours, minutes, seconds
  end
end
