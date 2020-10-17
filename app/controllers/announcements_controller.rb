class AnnouncementsController < ApplicationController
	def index
		@announcements = Announcement.all
	end

	def new
	end

	def create
		announcement = Announcement.new(announcement_params)
		if announcement.save
			redirect_to "/announcements"
		else
			flash[:errors] = announcement.errors.full_messages
			redirect_to "/announcements/new"
		end
	end

	def edit
		@announcements = Announcement.find(params[:id])
	end

	def update
		announcement = Announcement.find(params[:id])
		if announcement.update(announcement_params)
			redirect_to "/announcements"
		else
			flash[:errors] = announcement.errors.full_messages
			redirect_to "/announcements/#{announcement}"
		end
	end

	private
	def announcement_params
		params.require(:announcement).permit(:title, :details)
	end
end
