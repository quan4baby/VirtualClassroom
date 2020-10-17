class Announcement < ApplicationRecord
	validates :title, :details, presence: true
end
