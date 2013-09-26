class Venue < ActiveRecord::Base
	validates :title, presence: true, length: {minimum: 5 }
	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
