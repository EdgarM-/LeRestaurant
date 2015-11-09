class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :pass
      t.string :mail
      t.boolean :rol

      t.timestamps null: false
    end
  end
end
