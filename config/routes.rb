Rails.application.routes.draw do
	get "announcements" => "announcements#index"
	get "announcements/new" => "announcements#new"
	post "announcements" => "announcements#create"
	get "announcements/:id/show" => "announcements#show"
	get "announcements/:id/edit" => "announcements#edit"
	patch "announcements/:id" => "announcements#update"
	delete "announcements/:id" => "announcements#destroy"
  end
