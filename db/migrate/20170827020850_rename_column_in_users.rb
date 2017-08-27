class RenameColumnInUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :photo, :picture
  end
end
