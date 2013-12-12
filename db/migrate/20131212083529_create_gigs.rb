class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
			t.belongs_to :venue
			t.datetime :start_time
			t.string :title
			t.text :description
    end
  end
end
