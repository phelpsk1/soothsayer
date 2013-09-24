class BandsController < ApplicationController

	def destroy
		@band = Band.find(params[:id])
		@band.destroy
		
		redirect_to bands_path
	end

	def update
		@band = Band.find(params[:id])
		
		if @band.update(params[:band].permit(:title, :description, :genre))
			redirect_to @band
		else
			render 'edit'
		end
	end
	def index
		@bands = Band.all
	end

  def new
		@band = Band.new
	end

	def edit
		@band = Band.find(params[:id])
	end

  def create
		@band = Band.new(params[:band].permit(:title, :description, :genre))
		if @band.save
			redirect_to @band
		else
			render 'new'
		end
	end

	def show
		@band = Band.find(params[:id])
	end
	private
		def post_params
			params.require(:band).permit(:title, :description, :genre)
		end  
end
