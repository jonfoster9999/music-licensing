class ConverterController < ApplicationController
	def convert 
		@asset_path = ActionController::Base.helpers.asset_path(params[:string])
		render plain: @asset_path
	end
end
