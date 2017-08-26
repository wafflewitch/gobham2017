class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.references :users, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.datetime :exp
      t.references :acts, foreign_key: true
      t.integer :max_members

      t.timestamps
    end
  end
end
