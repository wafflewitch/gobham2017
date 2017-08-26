class RemoveFieldFromActs < ActiveRecord::Migration[5.0]
  def change
    remove_column :acts, :location
  end
end
