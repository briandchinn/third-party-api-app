json.array! @stories["results"].each do |story|
  json.title story["title"]
  json.by story["byline"]
  json.abstract story["abstract"]
end

