json.array!(@basics) do |basic|
  json.extract! basic, :name, :necessary_stuff, :how_to_make
  json.url basic_url(basic, format: :json)
end
