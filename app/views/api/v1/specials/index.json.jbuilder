json.array! @specials.each do |special|
  json.id special.id
  json.name special.name
  json.description special.description
  json.selected special.selected
  json.image_file_url special.image.url
end