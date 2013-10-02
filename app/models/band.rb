class Band < ActiveRecord::Base
	has_many :songs, dependent: :destroy
	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
