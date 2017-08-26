class RenameColumnsInEvents < ActiveRecord::Migration[5.0]
  def change
    rename_column :events, :users_id, :user_id
    rename_column :events, :acts_id, :act_id
  end
end
