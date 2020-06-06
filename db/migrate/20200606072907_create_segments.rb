class CreateSegments < ActiveRecord::Migration[6.0]
  def change
    create_table :segments do |t|
      t.string :name
      t.integer :link

      t.timestamps
    end
  end
end
