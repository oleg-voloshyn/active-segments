class AddBibNumberToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :bib, :string
  end
end
