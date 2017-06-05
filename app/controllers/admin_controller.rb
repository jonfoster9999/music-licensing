class AdminController < ApplicationController

	def dashboard
		render :"dashboard", :layout => "texture"
	end

end