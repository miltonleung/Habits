json.array!(@habits) do |habit|
  json.extract! habit, :id, :title, :action
  json.url habit_url(habit, format: :json)
end
