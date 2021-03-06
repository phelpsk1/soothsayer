class VenuesController < ApplicationController

	def destroy
		@venue = Venue.find(params[:id])
		@venue.destroy
		
		redirect_to venues_path
	end

	def update
		@venue = Venue.find(params[:id])
		
		if @venue.update(params[:venue].permit(:title, :text, :photo))
			redirect_to @venue
		else
			render 'edit'
		end
	end
	def index
		@venues = Venue.all
	end

  def new
		@venue = Venue.new
	end

	def edit
		@venue = Venue.find(params[:id])
	end

  def create
		@venue = Venue.new(params[:venue].permit(:title, :text))
		if @venue.save
			redirect_to @venue
		else
			render 'new'
		end
	end

	def show
		@venue = Venue.find(params[:id])
	end
	private
		def venue_params
			params.require(:venue).permit(:title, :text, :photo)
		end  
end
