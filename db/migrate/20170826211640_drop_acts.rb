class DropActs < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :act_id
  end
end
