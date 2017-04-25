Rails.application.routes.draw do
  resources :music_importers
  resources :artists
  resources :songs
  get '/store', to: "stores#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
