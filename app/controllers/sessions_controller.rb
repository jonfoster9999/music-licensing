class SessionsController < Devise::SessionsController
	def new
		@user = User.new
		render :new, :layout => 'messages'
	end
	  
	def create
		@user = User.find_for_authentication(:email => params[:user][:email])
		if @user.valid_password?(params[:user][:password])
			sign_in(@user)
			redirect_to root_path
		else
			flash[:notice] = "Invalid Data"
			@songs = Song.all.paginate(:page => params[:page], per_page: 20)
			@flag = true
			render :"stores/index"
		end
	    # self.resource = warden.authenticate!(auth_options)

	    # sign_in(resource_name, resource)
	    # yield resource if block_given?
	    # respond_with resource, location: "/store"
	    # binding.pry
	end

	private
		def user_params
			params.require(:user).permit(:email, :password, :remember_me)
		end

end