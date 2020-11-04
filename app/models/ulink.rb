class Ulink < ApplicationRecord
	validates :title, :url, presence: true
end
