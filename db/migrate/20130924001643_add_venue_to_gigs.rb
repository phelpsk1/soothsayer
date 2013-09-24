class AddVenueToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :venue, :string
  end
end
