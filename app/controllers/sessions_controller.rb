class SessionsController < Devise::SessionsController
	def new
		@user = User.new
		render :new, :layout => 'messages'
	end
	  
	def create
		@user = User.find_for_authentication(:email => params[:user][:email])
		if @user && @user.valid_password?(params[:user][:password])
			sign_in(@user)
			redirect_to root_path
		else
			flash[:notice] = "Invalid Data"
			@songs = Song.all.paginate(:page => params[:page], per_page: 20)
			@flag = true
 @filterrific = initialize_filterrific(
		    Song,
		    params[:filterrific]
		  ) or return
		  @songs = @filterrific.find.page(params[:page]).paginate(:page => params[:page], per_page: 10)
			render :"stores/index"
		end
	end

	private
		def user_params
			params.require(:user).permit(:email, :password, :remember_me)
		end

end