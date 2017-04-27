class MembershipsController < Devise::RegistrationsController

	def new
		@user = User.new
		render :new, :layout => false
	end

end