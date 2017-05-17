class Admin::AlbumCoversController < ApplicationController
  def index
  	AlbumCover.import
  	@covers = AlbumCover.find_each
  end

  def show
  	@cover = AlbumCover.find(params[:id])
  end
end
