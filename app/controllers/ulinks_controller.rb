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

	def edit
		@ulink = Ulink.find(params[:id])
	end

	def update
		ulink = Ulink.find(params[:id])
		if ulink.update(ulink_params)
			redirect_to "/ulinks"
		else
			flash[:errors] = ulink.errors.full_messages
			redirect_to "/ulinks/#{ulink.id}/edit"
		end
	end

	def destroy
		ulink = Ulink.find(params[:id])
		ulink.destroy
		redirect_to "/ulinks"
	end

	private
	def ulink_params
		params.require(:ulink).permit(:title, :url)
	end

end
