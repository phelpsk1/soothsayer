class Droptablegigs < ActiveRecord::Migration
  def change
		drop_table :gigs
  end
end
