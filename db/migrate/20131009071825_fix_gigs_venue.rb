class FixGigsVenue < ActiveRecord::Migration
  def change
		change_table :gigs do |t|
			t.rename :venue, :venue_id
		end
  end
end
