class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :band
      t.string :genre

      t.timestamps
    end
  end
end
