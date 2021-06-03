class AddGenreToPoems < ActiveRecord::Migration[6.1]
  def change
    add_reference :poems, :genre, null: false, foreign_key: true
  end
end
