class RemoveGenreIdFromPoems < ActiveRecord::Migration[6.1]
  def change
    remove_column :poems, :genre_id, :integer
  end
end
