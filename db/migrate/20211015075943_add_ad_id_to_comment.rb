class AddAdIdToComment < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :ad_id, :integer
  end
end
