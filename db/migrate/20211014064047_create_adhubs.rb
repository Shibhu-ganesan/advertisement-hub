class CreateAdhubs < ActiveRecord::Migration[6.1]
  def change
    create_table :adhubs do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
