class CreatePoems < ActiveRecord::Migration[6.1]
  def change
    create_table :poems do |t|
      t.string :title
      t.string :lines
      t.integer :genre_id

      t.timestamps
    end
  end
end
