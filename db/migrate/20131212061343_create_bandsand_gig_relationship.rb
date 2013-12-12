class CreateBandsandGigRelationship < ActiveRecord::Migration
  def change
    create_table :bands_gigs, id: false do |t|
			t.belongs_to :band
			t.belongs_to :gig
    end
  end
end
