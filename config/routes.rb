Rails.application.routes.draw do
	get "announcements" => "announcements#index"
	get "announcements/new" => "announcements#new"
	post "announcements" => "announcements#create"
	get "announcements/:id/show" => "announcements#show"
	get "announcements/:id/edit" => "announcements#edit"
	patch "announcements/:id" => "announcements#update"
	delete "announcements/:id" => "announcements#destroy"
	get "ulinks" => "ulinks#index"
	get "ulinks/new" => "ulinks#new"
	post "ulinks" => "ulinks#create"
	get "ulinks/:id/show" => "ulinks#show"
	get "ulinks/:id/edit" => "ulinks#edit"
	patch "ulinks/:id" => "ulinks#update"
	delete "ulinks/:id" => "ulinks#destroy"

  end
