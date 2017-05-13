class Admin::TagsController < ApplicationController
	def index 
		@tags = Tag.find_each
	end 

	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy 
		redirect_to admin_tags_path  
	end 

	def new
		@tag = Tag.new
		render :new, :layout => "tags"
	end

	def create 
		@tag = Tag.new(tags_params)
		if @tag.save 	
			redirect_to admin_tags_path
		else 
			render :new 
		end
	end

	private 
		def tags_params 
			params.require(:tag).permit(:name)
		end
end
