class AddUserNameToAdhub < ActiveRecord::Migration[6.1]
  def change
    add_column :adhubs, :user_, :string
    add_column :adhubs, :name, :text
  end
end
