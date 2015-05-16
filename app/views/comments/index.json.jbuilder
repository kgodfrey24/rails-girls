json.array!(@commnents) do |commnent|
  json.extract! commnent, :id, :user_name, :body, :idea_Id
  json.url commnent_url(commnent, format: :json)
end
