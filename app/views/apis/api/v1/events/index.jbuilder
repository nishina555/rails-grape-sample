json.array!(@events) do |event|
  json.extract! event, :id, :title, :body
end