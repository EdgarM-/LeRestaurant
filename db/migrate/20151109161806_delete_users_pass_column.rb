class DeleteUsersPassColumn < ActiveRecord::Migration
  def change
    remove_column :users, :pass
  end
end
