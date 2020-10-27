class LinksController < ApplicationController
	def index
		@links = Link.all
	end

	def new
	end

	def create
		links = Link.new(link_params)
		if links.save
			redirect_to "/links"
		else
			flash[:errors] = link.errors.full_messages
			redirect_to "/links/new"
		end
	end

	private
	def link_params
		params.require(:link).permit(:title)
	end
end
