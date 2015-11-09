class CreateEspectaculos < ActiveRecord::Migration
  def change
    create_table :espectaculos do |t|
      t.string :nombre
      t.date :fecha
      t.string :descripcion
      t.time :inicio
      t.time :fin

      t.timestamps null: false
    end
  end
end
