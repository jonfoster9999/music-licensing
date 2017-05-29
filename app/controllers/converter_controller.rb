class ConverterController < ApplicationController
	def convert 
		@asset_path = ActionController::Base.helpers.asset_path(params[:string] + ".mp3")
		render plain: @asset_path
	end
end
