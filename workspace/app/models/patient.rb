class Patient < ApplicationRecord
	has_many :visits

#Search in Rails From: https://stackoverflow.com/questions/12010780/search-in-rails
#Multiple Search Paramerters
	#def self.search(search)
	  #where("name LIKE ? OR dob LIKE ? OR phone LIKE ?",  "%#{search}%" , "%#{search}%" , "%#{search}%")
	#end
end

