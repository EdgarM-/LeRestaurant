class CreateMesas < ActiveRecord::Migration
  def change
    create_table :mesas do |t|
      t.integer :numero
      t.integer :cantidadPersonas

      t.timestamps null: false
    end
  end
end
