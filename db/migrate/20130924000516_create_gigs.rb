class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.string :title
      t.text :description
      t.datetime :start_time
      t.text :bandlist

      t.timestamps
    end
  end
end
