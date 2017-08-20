json.array! @specials.each do |special|
  json.id special.id
  json.name special.name
  json.description special.description
end