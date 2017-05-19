class Admin::AlbumCoversController < ApplicationController
  def index
  	AlbumCover.import
  	@covers = AlbumCover.find_each
  end

  def show
  	@cover = AlbumCover.find(params[:id])
  end

  def edit
  	@cover = AlbumCover.find(params[:id])
  end

  def update 
    @cover = AlbumCover.find(params[:id])
    @cover.update(album_covers_params)
    Song.find_each.select {|s| !s.album_cover }.each do |s| 
      s.album_cover = AlbumCover.first
      s.save
    end
    redirect_to admin_album_covers_path
  end

  private 
    def album_covers_params
      params.require(:album_cover).permit(:song_ids => [])
    end
end
