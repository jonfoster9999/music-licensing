Rails.application.routes.draw do
  root 'stores#index'
  devise_for :users, :controllers => { :registrations => 'memberships', :sessions => 'sessions' }
  resources :music_importers
  resources :artists
  resources :songs
  
  namespace :admin do
  	resources :songs
  end

  get '/admin/dashboard', to: "admin#dashboard"
  get '/store', to: "stores#index"

  get '/licenses/types', to: "licenses#types"
  get '/licenses/:id/details', to: "licenses#details"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
