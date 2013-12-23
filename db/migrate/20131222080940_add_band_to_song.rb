class AddBandToSong < ActiveRecord::Migration
  def change
		change_table :songs do |t|
		t.belongs_to :band
		end
  end
end
