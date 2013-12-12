class RemoveBandlistFromGigs < ActiveRecord::Migration
  def change
    remove_column :gigs, :bandlist, :text
  end
end
