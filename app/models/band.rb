class Band < ActiveRecord::Base
	has_many :songs
	has_and_belongs_to_many :gigs
	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
