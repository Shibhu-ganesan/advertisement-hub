class AddAdhubIdToComment < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :adhub_id, :integer
  end
end
