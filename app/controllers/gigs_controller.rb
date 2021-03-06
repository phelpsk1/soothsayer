class GigsController < ApplicationController

	def destroy
		@gig = Gig.find(params[:id])
		@gig.destroy
		
		redirect_to gigs_path
	end

	def update
		@gig = Gig.find(params[:id])
		
		if @gig.update(params[:gig].permit(:title, :description, :start_time, :venue_id, :band_ids => []))
			redirect_to @gig
		else
			render 'edit'
		end
	end
	def index
		@gigs = Gig.all
	end

  def new
		@gig = Gig.new
	end

	def edit
		@gig = Gig.find(params[:id])
	end

  def create
		@gig = Gig.new(params[:gig].permit(:title, :description, :start_time, :venue_id, :band_ids => []))
		if @gig.save
			redirect_to @gig
		else
			render 'new'
		end
	end

	def show
#		@gig = Gig.find(params[:id])
		@gig = Gig.find(params[:id])
	end
	private
		def post_params
			params.require(:gig).permit(:title, :description, :start_time, :venue_id, :band_ids)
		end  
end
