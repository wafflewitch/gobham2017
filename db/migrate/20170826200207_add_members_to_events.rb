class AddMembersToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :members, :integer, array:true, default: []
  end
end
