class AddUserIdToAdhubs < ActiveRecord::Migration[6.1]
  def change
    add_column :adhubs, :user_id, :integer
    add_index :adhubs, :user_id
  end
end
