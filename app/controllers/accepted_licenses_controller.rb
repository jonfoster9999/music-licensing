class AcceptedLicensesController < ApplicationController
	def create 
		al = AcceptedLicense.new(accepted_license_params)
		al.user_id = current_user.id
		al.save 
		render plain: Rails.root + '/accepted_licenses/' + al.id.to_s, :layout => false
	end

	def show 
		@accepted_license = AcceptedLicense.find(params[:id])
	end

	def index 
		@user = User.find(params[:user_id])
		@accepted_licenses = @user.accepted_licenses
	end

	private 
		def accepted_license_params 
			params.require(:accepted_license).permit(:song_id, :price, :license_details => params[:accepted_license][:license_details].keys.collect { |i| {i => []}})
		end
end
