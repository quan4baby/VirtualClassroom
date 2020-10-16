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
			redirect_to "/announcements/new"
		end
	end

	private
	def announcement_params
		params.require(:announcement).permit(:title, :details)
	end
end
