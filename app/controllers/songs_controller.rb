class SongsController < ApplicationController

	def destroy
		@song = Song.find(params[:id])
		@song.destroy
		
		redirect_to songs_path
	end

	def update
		@song = Song.find(params[:id])
		
		if @song.update(params[:song].permit(:title, :band_title, :genre, :mp3, :band_id))
			redirect_to @song
		else
			render 'edit'
		end
	end
	def index
		@songs = Song.all
	end

  def new
		@song = Song.new
	end

	def edit
		@song = Song.find(params[:id])
	end

  def create
		@song = Song.new(params[:song].permit(:title, :band_title, :genre, :mp3, :band_id))
		if @song.save
			redirect_to @song
		else
			render 'new'
		end
	end

	def show
		@song = Song.find(params[:id])
	end
	private
		def post_params
			params.require(:song).permit(:title, :band_title, :genre, :mp3, :band_id)
		end  
end
