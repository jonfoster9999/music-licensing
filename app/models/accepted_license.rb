class AcceptedLicense < ApplicationRecord
	belongs_to :song 
	belongs_to :user
	serialize :details

	def license_details=(details)
		arr = []
		details.each do |detail|
			arr << Detail.new(detail[1][0].squish, detail[1][1].squish)
		end
		self.details = arr
	end

	Detail = Struct.new(:category, :selected)
end
