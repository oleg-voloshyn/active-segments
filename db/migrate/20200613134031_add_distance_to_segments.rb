class AddDistanceToSegments < ActiveRecord::Migration[6.0]
  def change
    add_column :segments, :distance, :float
  end
end
