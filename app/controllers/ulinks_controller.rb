class UlinksController < ApplicationController
	def index
		@ulinks = Ulink.all
	end

	def new
	end

	def create
		ulink = Ulink.new(ulink_params)
		if ulink.save
			redirect_to "/ulinks"
		else
			flash[:errors] = ulink.errors.full_messages
			redirect_to "/ulinks/new"
		end
	end

	def show
		@ulink = Ulink.find(params[:id])
	end

	private
	def ulink_params
		params.require(:ulink).permit(:title, :url)
	end

end
