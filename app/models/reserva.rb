class Reserva < ActiveRecord::Base
    belongs_to :user
    belongs_to :espectaculo
end
