class CreateActs < ActiveRecord::Migration[5.0]
  def change
    create_table :acts do |t|
      t.string :name
      t.string :desc
      t.string :location

      t.timestamps
    end
  end
end
