class RemoveForeignKey < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key "results", "segments"
    remove_foreign_key "results", "users"
  end
end
