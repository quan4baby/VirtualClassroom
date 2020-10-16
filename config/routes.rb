Rails.application.routes.draw do
	get "announcements" => "announcements#index"
	get "announcements/new" => "announcements#new"
	post "announcements" => "announcements#create"
  end
