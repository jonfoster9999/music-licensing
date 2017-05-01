class LicensesController < ApplicationController
	
	def types
		@licenses = License.all
		render :types, :layout => false
	end

	def details
		@license = License.find(params[:id])
		render :details, :layout => false
	end

end