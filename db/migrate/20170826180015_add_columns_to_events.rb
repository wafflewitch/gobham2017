class AddColumnsToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :location, :string
    add_column :events, :latitude, :float
    add_column :events, :longitude, :float
  end
end
