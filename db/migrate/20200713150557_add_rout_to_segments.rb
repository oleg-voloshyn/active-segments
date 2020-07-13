class AddRoutToSegments < ActiveRecord::Migration[6.0]
  def change
    add_column :segments, :rout, :string
  end
end
