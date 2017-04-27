Rails.application.routes.draw do
  root 'stores#index'
  devise_for :users, :controllers => { :registrations => 'memberships', :sessions => 'sessions' }
  resources :music_importers
  resources :artists
  resources :songs
  get '/store', to: "stores#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
