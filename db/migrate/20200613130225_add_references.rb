class AddReferences < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :race_id, :integer
    add_column :segments, :race_id, :integer
  end
end
