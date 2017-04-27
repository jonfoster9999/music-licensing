class SessionsController < Devise::SessionsController
	def new
		@user = User.new
		render :new, :layout => false
	end

end