class AddUsernameToAdhub < ActiveRecord::Migration[6.1]
  def change
    add_column :adhubs, :username, :text
  end
end
