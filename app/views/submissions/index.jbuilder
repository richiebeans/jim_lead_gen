json.array! @submissions do |submission|
  json.id submission.id
  json.email submission.email
  json.created_at submission.created_at
end