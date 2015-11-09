json.array!(@espectaculos) do |espectaculo|
  json.extract! espectaculo, :id, :nombre, :fecha, :descripcion, :inicio, :fin
  json.url espectaculo_url(espectaculo, format: :json)
end
