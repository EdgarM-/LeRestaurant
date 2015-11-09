class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.string :cliente
      t.integer :mesa
      t.string :espectaculo
      t.date :fecha
      t.time :hora

      t.timestamps null: false
    end
  end
end
