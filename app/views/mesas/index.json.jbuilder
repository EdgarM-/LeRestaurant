json.array!(@mesas) do |mesa|
  json.extract! mesa, :id, :, :numero,, :, :cantidadPersonas
  json.url mesa_url(mesa, format: :json)
end
