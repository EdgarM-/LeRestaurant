class User < ActiveRecord::Base
    validates :name, length: { minimum: 2 }, presence: true, :uniqueness => true, :length => { :in => 3..20 }
    validates :mail, presence: true, :uniqueness => true, format: { with: /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i, message: "Correo invalido" }
    has_secure_password
    validates :password, presence: true, length: { :in => 6..16}
    has_many :reservas, dependent: :destroy
end
