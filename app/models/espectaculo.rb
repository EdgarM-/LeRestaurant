class Espectaculo < ActiveRecord::Base
    has_many :reservas, dependent: :destroy
end
