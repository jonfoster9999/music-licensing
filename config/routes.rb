Rails.application.routes.draw do
  namespace :admin do
    get 'album_covers/index'
  end

  namespace :admin do
    get 'album_covers/show'
  end

  root 'stores#index'
  devise_for :users, :controllers => { :registrations => 'memberships', :sessions => 'sessions' }
  resources :music_importers
  resources :artists
  resources :songs
  
  namespace :admin do
    resources :tags
  	resources :songs
    resources :genres
    resources :catalogs
    resources :album_covers, :only => [:index, :show, :edit, :update]
    resources :artists
  end

  get '/admin/dashboard', to: "admin#dashboard"
  get '/store', to: "stores#index"

  get '/licenses/types', to: "licenses#types"
  get '/licenses/:id/details', to: "licenses#details"

  get '/admin/songs/toggle_favorites/:user_id/:song_id', to: "songs#toggle_favorites"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
