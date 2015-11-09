json.array!(@reservas) do |reserva|
  json.extract! reserva, :id, :cliente, :mesa, :espectaculo, :fecha, :hora
  json.url reserva_url(reserva, format: :json)
end
